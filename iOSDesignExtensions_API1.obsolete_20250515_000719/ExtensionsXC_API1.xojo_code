#tag Module
Protected Module ExtensionsXC_API1
	#tag Method, Flags = &h1
		Protected Function CGRectMake(x As CGFloat, y As CGFloat, width As CGFloat, height As CGFloat) As ExtensionsXC.xcCGRect
		  
		  Dim origin As ExtensionsXC.xcCGPoint
		  origin.x = x
		  origin.y = y
		  
		  Dim size As ExtensionsXC.xcCGSize
		  size.width = width
		  size.height = height
		  
		  Dim rect As ExtensionsXC.xcCGRect
		  rect.origin = origin
		  rect.rsize = size
		  
		  Return rect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( deprecated = "Use Image.ImageWithColorXC instead" ) Protected Function ColoredIcon(icon as iOSImage, value as Color) As iOSImage
		  
		  
		  
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
		Attributes( deprecated = "Use image.ImageOriginalXC instead" ) Protected Function ImageOriginalXC(image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Declare Function imageWithRenderingMode Lib "UIKit.framework" selector "imageWithRenderingMode:" (id As ptr, RenderingMode As Integer) As ptr
		  
		  Return iOSImage.FromHandle(imageWithRenderingMode(image.Handle, 1))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( deprecated = "Use image.ImageWithMaskXC instead" ) Protected Function ImageWithMaskXC(image As iOSImage) As iOSImage
		  
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

	#tag Method, Flags = &h0
		Sub OpeniOSSettingsXC(extends app As iOSApplication)
		  #Pragma Unused app
		  
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function URLWithString Lib "Foundation" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		  
		  Dim openSettingsURL As ptr = LoadConstantXC("UIKit", "UIApplicationOpenSettingsURLString")
		  Declare Function stringWithString Lib "Foundation.framework" selector "stringWithString:" (clsRef As ptr, Str As ptr) As CFStringRef
		  
		  
		  Dim nsURL As ptr = URLWithString(NSClassFromString("NSURL"), openSettingsURL.CFStringRef(0))
		  
		  Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		  Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		  
		  
		  If getiOSVersionXC >= 10.0 Then
		    
		    Declare Sub openURL Lib "UIKit" Selector "openURL:options:completionHandler:" (id As Ptr, nsurl As Ptr, options As ptr, completion As ptr)
		    openURL(sharedApp, nsURL, nil, nil)
		    
		  Else
		    
		    Declare Function openURL Lib "UIKit" Selector "openURL:" (id As Ptr, nsurl As Ptr) As Boolean
		    call openURL(sharedApp, nsURL)
		    
		    
		  End If
		End Sub
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
		Protected Function UIEdgeInsetMake(top As CGFloat, left As CGFloat, bottom As CGFloat, right As CGFloat) As xcUIEdgeInsets
		  
		  Dim insets As xcUIEdgeInsets
		  insets.Top = top
		  insets.Left = Left
		  insets.Bottom = bottom
		  insets.Right = Right
		  
		  Return insets
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Attributes( deprecated = "Use image.ImageWithMaskXC instaed" ) Protected Function WithMaskXC(extends image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Return ImageWithMaskXC(image)
		End Function
	#tag EndMethod


	#tag Note, Name = History
		## History
		
		### API1 extensions won't be updated anymore
		
		### Version 1.8 - Released 2020-11-06
		* Ready for future versions of Xojo
		
		### Version 1.?? - Released 2020-??
		* Added iOSDatePicker.SetTextColorXC
		
		### Version 1.7.0 - Released 2019-11-19
		* New ImageExtensionsXC module
		
		### Version 1.6.0 - Released 2019-04-06
		* New iOSView hidekeyboard
		* Fix iOSControl.SetAlphaValueXC for iOS 12.2 (Requires iOSKit)
		
		### Version 1.5.1 - Released 2019-02-21
		* New HTMLViewer Function LoadFileXC
		* New iOSView Function isRightToLeftXC
		
		* Version 1.5.0 - Released 2019-01-31
		** Added Layer Extensions 
		1. Border Color
		2. Border Width
		3. Corner Radius
		4. Shadow
		
		
		* Version 1.4.0 - Released 2018-08-15
		** Added HTMLViewer Extensions 
		1. ExecuteJavascript
		2. LoadPage
		3. UserAgent 
		
		** Added TableExtensionsXC.SetSeparatorColorXC
		
		* Version 1.3.1 - Released 2018-05-30
		** Added iOSView.SetToolBarBackgroundColorXC 
		and
		** Added iOSView.SetToolBarColorXC
		
		* Version 1.3.1 - Released 2018-05-30
		** Added App.SetWindowColorXC
		
		* Version 1.3 - Released 2018-05-27
		** Added scrolling functions to iOSTextArea
		
		* Version 1.2 - Released 2018-05-??
		** Added an app icon
		** Fixed GetBoundsXC function
		** Renamed ScrollViewExtensionsXCXC to ScrollViewExtensionsXC
		** Removed Modal Curl transition
		** AdjustFontSizeToFitWidthXC now has an optional lines property to set the amount of lines to display
		** SetTabPageXC to set the current page in a TabBar view
		** GetTabPageXC to get the current page index in a TabBar view
		** SetNavBarTitleColorXC to set the color of the text in the navbar
		** GetiOSVersionXC returns the current iOS version number
		** Table.GetScrollPositionXC returns the current section/row position
		
		* Version 1.1 - Released 2018-05-10
		** New modal transition options
		
		
		* Version 1.0 - Released 2018-04-26
		
		Copy-paste the iOSExtensions folder into your project.
		
		Most controls will then have additional methods, all ending with "XC"
		
		Contact: https://www.jeremieleroy.com/contact.php
		
		Feel free to ask for feature requests!
		
		Made with ❤️ in France
		
		Jeremie LEROY
		
		
		
	#tag EndNote


	#tag Constant, Name = kUseUIKit, Type = Boolean, Dynamic = False, Default = \"False", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kVersion, Type = Text, Dynamic = False, Default = \"1.8.0", Scope = Protected
	#tag EndConstant


	#tag Structure, Name = xcCGAffineTransform, Flags = &h1
		a as CGFloat
		  b as CGFloat
		  c as CGFloat
		  d as CGFloat
		  tx as CGFloat
		ty as CGFloat
	#tag EndStructure

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
