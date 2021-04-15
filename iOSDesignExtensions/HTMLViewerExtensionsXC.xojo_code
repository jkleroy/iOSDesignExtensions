#tag Module
Protected Module HTMLViewerExtensionsXC
	#tag DelegateDeclaration, Flags = &h1
		Protected Delegate Sub ExecuteJavascriptDelegateXC(result As Auto, error As RuntimeException)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub ExecuteJavascriptXC(Extends viewer As MobileHTMLViewer, script As String, callback As ExecuteJavascriptDelegateXC = nil)
		  //Code from Jason King
		  // https://forum.xojo.com/19271-ios-what-we-want-roadmap/p2#p169870
		  
		  
		  
		  
		  
		  Declare Sub execJavaScript Lib "WebKit.framework" selector "evaluateJavaScript:completionHandler:" (obj_id As ptr, script As CFStringRef, block As ptr)
		  
		  If callback <> Nil Then
		    ExecuteJavascriptCallback = callback
		    
		    Dim block As New iOSBlock(AddressOf ExecuteJavascript_Result)
		    
		    execJavaScript(viewer.Handle, script, block.Handle)
		    
		    
		  Else
		    execJavaScript(viewer.Handle, script, Nil)
		    
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ExecuteJavascript_Result(result As ptr, error As ptr)
		  
		  If error <> Nil Then
		    
		    Declare Function localizedDescription Lib "Foundation.framework" selector "localizedDescription" (obj_id As ptr) As CFStringRef
		    Dim errReason As String = localizedDescription(error)
		    
		    Dim err As New RuntimeException
		    err.Message = errReason
		    
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
		    
		    
		    Dim tmp As String
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

	#tag Method, Flags = &h0, Description = 4C6F61647320612066696C6520616E6420736F6C7665732053616E64626F78696E6720697373756573
		Sub LoadFileXC(extends viewer As MobileHTMLViewer, htmlFile As FolderItem)
		  
		  
		  
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function URLWithString Lib "Foundation.framework" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		  
		  Declare sub loadFileURL lib "UIKit.framework" selector "loadFileURL:allowingReadAccessToURL:" (obj as ptr, url as ptr, readAccessURL as ptr)
		  
		  Dim fileURL As Ptr = URLWithString(NSClassFromString("NSURL"), htmlFile.URLPath)
		  Dim parentURL As Ptr = URLWithString(NSClassFromString("NSURL"), htmlFile.parent.URLPath)
		  
		  
		  loadFileURL(viewer.Handle, fileURL, parentURL)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadPageXC(extends viewer As MobileHTMLViewer, html As String, baseURL As String = "")
		  //Code from Jason King
		  // https://forum.xojo.com/19271-ios-what-we-want-roadmap/p2#p169870
		  
		  
		  Declare Sub loadHTML Lib "UIKit.framework" selector "loadHTMLString:baseURL:" (obj_id As ptr, html As CFStringRef, url As ptr)
		  
		  If baseURL.isEmpty Then
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
		Sub SetTransparentXC(extends viewer As MobileHTMLViewer, value As Boolean)
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
		Sub UserAgentXC(extends viewer As MobileHTMLViewer, callback As HTMLViewerExtensionsXC.ExecuteJavascriptDelegateXC)
		  
		  
		  
		  viewer.ExecuteJavascriptXC("navigator.userAgent", callback)
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected ExecuteJavascriptCallback As ExecuteJavascriptDelegateXC
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
