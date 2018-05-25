#tag Module
Protected Module ExtensionsXC
	#tag Method, Flags = &h1
		Protected Function CGRectMake(x As CGFloat, y As CGFloat, width As CGFloat, height As CGFloat) As xcCGRect
		  
		  Dim origin As ExtensionsXC.xcCGPoint
		  origin.x = x
		  origin.y = y
		  
		  Dim size As ExtensionsXC.xcCGSize
		  size.width = width
		  size.height = height
		  
		  Dim rect As xcCGRect
		  rect.origin = origin
		  rect.rsize = size
		  
		  Return rect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ColoredIcon(icon As iOSImage, value as Color) As iOSImage
		  
		  
		  
		  If icon Is Nil Then Return Nil
		  
		  Dim b As New iOSBitmap(Icon.Width, icon.Height, Icon.Scale)
		  Dim g As iOSGraphics = b.Graphics
		  Dim tmp As iOSImage = ImageWithMaskXC(icon)
		  
		  g.FillColor = value
		  
		  g.DrawImage(tmp, 0, 0, tmp.Width*tmp.Scale, tmp.Height*tmp.Scale)
		  
		  Return b.Image
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetiOSVersionXC() As Double
		  
		  Static sSystemVersion As Double
		  
		  //Get sSystemVersion only once
		  If sSystemVersion = 0.0 Then
		    
		    Declare Function currentDevice_ Lib "UIKit.framework" selector "currentDevice" (clsRef As ptr) As ptr
		    Declare Function systemversion_ Lib "UIKit.framework" selector "systemVersion" (obj_id As ptr) As CFStringRef
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Dim device As Ptr = currentDevice_(NSClassFromString("UIDevice"))
		    Dim systemVersion As Text = systemversion_(device)
		    
		    Try
		      sSystemVersion = Double.FromText(systemVersion)
		    Catch
		    End Try
		    
		  End If
		  
		  Return sSystemVersion
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D61676520746861742077696C6C20616C776179732072656E646572207573696E6720697473207472756520636F6C6F7273
		Protected Function ImageOriginalXC(image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Declare Function imageWithRenderingMode Lib "UIKit.framework" selector "imageWithRenderingMode:" (id As ptr, RenderingMode As Integer) As ptr
		  
		  Return iOSImage.FromHandle(imageWithRenderingMode(image.Handle, 1))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ImageWithMaskXC(image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Declare Function imageWithRenderingMode lib "UIKit.framework" selector "imageWithRenderingMode:" (id as ptr, RenderingMode as Integer) as ptr
		  
		  Return iOSImage.FromHandle(imageWithRenderingMode(image.Handle, 2))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoadConstantXC(frameworkName as Text, constName as Text) As Ptr
		  Declare Function dlsym Lib "/usr/lib/libSystem.dylib" ( handle As Ptr, name As CString ) As ptr
		  dim libPtr as Ptr = LoadFrameworkXC(frameworkName)
		  
		  dim constPtr as Ptr = dlsym(libPtr, constName.ToCString(xojo.core.TextEncoding.UTF8))
		  Return constPtr
		  
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoadFrameworkXC(frameworkName as Text) As Ptr
		  static frameworkHandlesDict as xojo.Core.Dictionary = new xojo.Core.Dictionary
		  
		  if frameworkHandlesDict.HasKey(frameworkName) then Return frameworkHandlesDict.Value(frameworkName)
		  
		  Declare Function dlopen Lib "/usr/lib/libSystem.dylib" ( path As CString, mode As Int32 ) As Ptr
		  Declare Function dlerror Lib "/usr/lib/libSystem.dylib" () As CString
		  
		  Const RTLD_LAZY = 1
		  Const RTLD_GLOBAL = 8
		  
		  dim path as Text =  "/System/Library/Frameworks/" + frameworkName + ".framework/" + frameworkName
		  Dim result As ptr = dlopen(path.ToCString(xojo.core.TextEncoding.UTF8), RTLD_LAZY Or RTLD_GLOBAL )
		  
		  If result = Nil Then
		    Dim reason As Text = Text.FromCString(dlerror(), Xojo.Core.TextEncoding.UTF8)
		    Dim exc As New Xojo.Core.InvalidArgumentException
		    exc.Reason = reason
		    Raise exc
		    Return nil
		  end if
		  
		  frameworkHandlesDict.Value(frameworkName) = result
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function StringConstantXC(frameworkName as Text, constName as Text) As Text
		  Dim constPtr As Ptr = LoadConstantXC(frameworkName, constName)
		  if constPtr <> nil then
		    Return constPtr.CFStringRef(0)
		  end if
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WithMaskXC(extends image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Return ImageWithMaskXC(image)
		End Function
	#tag EndMethod


	#tag Note, Name = History
		### History
		
		* Version 1.1 - Released 2018-05-10
		** New modal transition options
		
		
		* Version 1.0 - Released 2018-04-26
		
	#tag EndNote


	#tag Constant, Name = kUseUIKit, Type = Boolean, Dynamic = False, Default = \"False", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kVersion, Type = Double, Dynamic = False, Default = \"1.2", Scope = Protected
	#tag EndConstant


	#tag Structure, Name = xcCGPoint, Flags = &h1
		x As CGFloat
		y as CGFloat
	#tag EndStructure

	#tag Structure, Name = xcCGRect, Flags = &h1
		origin As xcCGPoint
		rsize as xcCGSize
	#tag EndStructure

	#tag Structure, Name = xcCGSize, Flags = &h1
		width As CGFloat
		height As CGFloat
	#tag EndStructure

	#tag Structure, Name = xcUIEdgeInsets, Flags = &h1
		Top as CGFloat
		  Left As CGFloat
		  Bottom As CGFloat
		Right As CGFloat
	#tag EndStructure


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
