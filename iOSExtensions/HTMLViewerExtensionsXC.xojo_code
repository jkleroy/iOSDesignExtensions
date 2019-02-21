#tag Module
Protected Module HTMLViewerExtensionsXC
	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub ExecuteJavascriptDelegateXC(result As Auto, error As RuntimeException)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Function ExecuteJavascriptXC(Extends viewer As iOSHTMLViewer, script As Text, callback As ExecuteJavascriptDelegateXC = nil) As Text
		  //Code from Jason King
		  // https://forum.xojo.com/19271-ios-what-we-want-roadmap/p2#p169870
		  
		  
		  
		  #If XojoVersion < 2018.02 //Code for Deprecated UIWebview
		    
		    Declare Function execJavaScript Lib "UIKit.framework" selector "stringByEvaluatingJavaScriptFromString:" (obj_id As ptr, script As CFStringRef) As Ptr
		    
		    Dim resPtr As ptr = execJavaScript(viewer.handle, script)
		    
		    If resPtr <> Nil Then //no error
		      Declare Function self_ Lib "Foundation.framework" selector "self" (obj_id As ptr) As CFStringRef
		      
		      Dim result As Text = resPtr
		      If callback <> Nil Then
		        callback.Invoke(result, Nil)
		      End If
		      
		      Return self_(resPtr)
		      
		    Else //error occurred
		      Break
		      Return ""
		      
		    End If
		    
		  #Else //Xojo 2018r2 now uses WKWebview
		    
		    Declare Sub execJavaScript Lib "WebKit.framework" selector "evaluateJavaScript:completionHandler:" (obj_id As ptr, script As CFStringRef, block As ptr)
		    
		    If callback <> Nil Then
		      ExecuteJavascriptCallback = callback
		      
		      Dim block As New iOSBlock(AddressOf ExecuteJavascript_Result)
		      
		      execJavaScript(viewer.Handle, script, block.Handle)
		      
		      
		    Else
		      execJavaScript(viewer.Handle, script, Nil)
		      
		      
		    End If
		    
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExecuteJavascript_Result(result As ptr, error As ptr)
		  
		  If error <> Nil Then
		    
		    Declare Function localizedDescription Lib "Foundation.framework" selector "localizedDescription" (obj_id As ptr) As CFStringRef
		    Dim errReason As Text = localizedDescription(error)
		    
		    Dim err As New RuntimeException
		    err.Reason = errReason
		    
		    //Sending the error and returning
		    Try
		      If ExecuteJavascriptCallback <> Nil Then
		        
		        ExecuteJavascriptCallback.Invoke(Nil, err)
		      End If
		    Catch
		      
		    End Try
		    Return
		  End If
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function isKindOfClass Lib "UIKit.framework" selector "isKindOfClass:" (obj_id As ptr, cls As ptr) As Boolean
		  
		  Dim value As Auto
		  
		  
		  //Finding type of result
		  //This is a tricky part
		  If isKindOfClass(result, NSClassFromString("NSString")) Then
		    
		    
		    Dim tmp As Text
		    Declare Function self_ Lib "Foundation.framework" selector "self" (obj_id As ptr) As CFStringRef
		    tmp = self_(result)
		    
		    value = tmp
		    
		    'Declare Function stringWithString Lib "Foundation.framework" selector "stringWithString:" (clsRef As ptr, Str As ptr) As CFStringRef
		    'Dim t As Text = stringWithString(NSClassFromString("NSString"), result)
		    'value = t
		    
		    
		    
		    
		    
		  Elseif isKindOfClass(result, NSClassFromString("NSNumber")) Then
		    
		    Declare Function CFNumberGetValue Lib "Foundation.framework" (number As Ptr, theType As Integer, ByRef valuePtr As CGFloat) As Boolean
		    
		    Const kCFNumberCGFloatType = 16
		    
		    Dim d As Double
		    Call CFNumberGetValue(result, kCFNumberCGFloatType, d)
		    
		    value = d
		    
		    'Declare Function doubleValue Lib "Foundation.framework" selector "doubleValue:" (clsRef As ptr, Val As ptr) As CGFloat
		    '
		    'Dim d As Double = DoubleValue(NSClassFromString("NSNumber"), result)
		    '
		    'value = d
		    
		    
		    //ObjC function might return different value types
		    
		    'Elseif isKindOfClass(obj, Foundation.NSClassFromString("NSDictionary")) Then
		    'Return "NSDictionary"
		    'Elseif isKindOfClass(obj, Foundation.NSClassFromString("NSArray")) Then
		    'Return "NSArray"
		    
		  Else
		    value = result
		  End If
		  
		  
		  //Invoking callback with result
		  Try
		    If ExecuteJavascriptCallback <> Nil Then
		      
		      ExecuteJavascriptCallback.Invoke(value, Nil)
		    End If
		  Catch
		    
		  End Try
		  
		  ExecuteJavascriptCallback = Nil
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFileXC(extends viewer As iOSHTMLViewer, htmlFile As Xojo.IO.FolderItem)
		  
		  
		  
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function URLWithString Lib "Foundation.framework" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		  
		  Declare sub loadFileURL lib "UIKit.framework" selector "loadFileURL:allowingReadAccessToURL:" (obj as ptr, url as ptr, readAccessURL as ptr)
		  
		  Dim fileURL As Ptr = URLWithString(NSClassFromString("NSURL"), htmlFile.URLPath)
		  Dim parentURL As Ptr = URLWithString(NSClassFromString("NSURL"), htmlFile.parent.URLPath)
		  
		  
		  loadFileURL(htmlPresentation.Handle, fileURL, parentURL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPageXC(extends viewer As iOSHTMLViewer, html As Text, baseURL As Text = "")
		  //Code from Jason King
		  // https://forum.xojo.com/19271-ios-what-we-want-roadmap/p2#p169870
		  
		  
		  Declare Sub loadHTML Lib "UIKit.framework" selector "loadHTMLString:baseURL:" (obj_id As ptr, html As CFStringRef, url As ptr)
		  
		  If baseURL.Empty Then
		    loadHTML(viewer.handle, html, Nil)
		    
		  Else
		    
		    Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		    Declare Function URLWithString Lib "Foundation" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		    
		    Dim nsURL As Ptr = URLWithString(NSClassFromString("NSURL"), baseURL)
		    
		    loadHTML(viewer.Handle, html, nsURL)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAllowsMagnificationXC(extends viewer As iOSHTMLViewer, value As Boolean)
		  
		  declare sub setMagnification lib "UIKit.framework" selector "setAllowsMagnification:" (id as ptr, value as Boolean)
		  
		  
		  setMagnification(viewer.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTransparentXC(extends viewer As iOSHTMLViewer, value As Boolean)
		  //New
		  
		  'self.webView!.isOpaque = false
		  'self.webView!.backgroundColor = UIColor.clear
		  'self.webView!.scrollView.backgroundColor = UIColor.clear
		  
		  
		  declare sub setOpaque lib "UIKit.framework" selector "setOpaque:" (id as ptr, value as Boolean)
		  
		  if value then
		    setOpaque(viewer.Handle, not value)
		    
		    viewer.SetBackgroundColorXC(&c000000FF)
		    
		  Else
		    
		    setOpaque(viewer.Handle, not value)
		    viewer.SetBackgroundColorXC(&cFFFFFF)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UserAgentXC(extends viewer As iOSHTMLViewer, callback As ExecuteJavascriptDelegateXC) As Text
		  
		  
		  
		  Return viewer.ExecuteJavascriptXC("navigator.userAgent", callback)
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected ExecuteJavascriptCallback As ExecuteJavascriptDelegateXC
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
