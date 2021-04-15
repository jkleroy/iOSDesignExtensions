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
		Protected Function GetiOSVersionXC() As Double
		  
		  Static sSystemVersion As Double
		  
		  //Get sSystemVersion only once
		  If sSystemVersion = 0.0 Then
		    
		    Declare Function currentDevice_ Lib "UIKit.framework" selector "currentDevice" (clsRef As ptr) As ptr
		    Declare Function systemversion_ Lib "UIKit.framework" selector "systemVersion" (obj_id As ptr) As CFStringRef
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Dim device As Ptr = currentDevice_(NSClassFromString("UIDevice"))
		    Dim systemVersion As String = systemversion_(device)
		    
		    Try
		      sSystemVersion = Double.FromString(systemVersion)
		    Catch
		    End Try
		    
		  End If
		  
		  Return sSystemVersion
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoadConstantXC(frameworkName as String, constName as String) As Ptr
		  Declare Function dlsym Lib "/usr/lib/libSystem.dylib" ( handle As Ptr, name As CString ) As ptr
		  dim libPtr as Ptr = LoadFrameworkXC(frameworkName)
		  
		  Dim cstr As CString = constName
		  
		  dim constPtr as Ptr = dlsym(libPtr, cstr)
		  Return constPtr
		  
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LoadFrameworkXC(frameworkName as String) As Ptr
		  static frameworkHandlesDict as Dictionary = new Dictionary
		  
		  if frameworkHandlesDict.HasKey(frameworkName) then Return frameworkHandlesDict.Value(frameworkName)
		  
		  Declare Function dlopen Lib "/usr/lib/libSystem.dylib" ( path As CString, mode As Int32 ) As Ptr
		  Declare Function dlerror Lib "/usr/lib/libSystem.dylib" () As CString
		  
		  Const RTLD_LAZY = 1
		  Const RTLD_GLOBAL = 8
		  
		  dim path as String =  "/System/Library/Frameworks/" + frameworkName + ".framework/" + frameworkName
		  
		  Dim pathCstr As CString = path
		  
		  Dim result As ptr = dlopen(pathCstr, RTLD_LAZY Or RTLD_GLOBAL )
		  
		  If result = Nil Then
		    'Dim reason As Text = Text.FromCString(dlerror(), Xojo.Core.TextEncoding.UTF8)
		    Dim reason As String = dlerror
		    Dim exc As New InvalidArgumentException
		    exc.message = reason
		    Raise exc
		    Return nil
		  end if
		  
		  frameworkHandlesDict.Value(frameworkName) = result
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320746865207363616C65206F66207468652063757272656E74204D61696E53637265656E
		Protected Function MainScreenScaleXC() As Double
		  //declare function NSClassFromString lib "Foundation.Framework" (aClassName as CFStringRef) as Ptr
		  Declare Function NSClassFromString Lib "Foundation" (aClassName As CFStringRef) As Ptr
		  Soft Declare Function scale Lib "UIKit" selector "scale" (classRef As Ptr) As CGFloat
		  Soft Declare Function mainScreen Lib "UIKit" selector "mainScreen" (classRef As Ptr) As ptr
		  
		  
		  Dim scale As Double = scale(mainScreen(NSClassFromString("UIScreen")))
		  
		  Return scale
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpeniOSSettingsXC(extends app As MobileApplication)
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
		Protected Function StringConstantXC(frameworkName as String, constName as String) As String
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


	#tag Note, Name = History
		## History
		
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

	#tag Constant, Name = kVersion, Type = Text, Dynamic = False, Default = \"2.0.0", Scope = Protected
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
