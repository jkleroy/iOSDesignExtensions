#tag Module
Protected Module AppExtensionsXC
	#tag Method, Flags = &h0
		Sub OpeniOSSettingsXC(extends app As MobileApplication)
		  #Pragma Unused app
		  
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function URLWithString Lib "Foundation" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		  
		  Dim openSettingsURL As ptr = ExtensionsXC.LoadConstantXC("UIKit", "UIApplicationOpenSettingsURLString")
		  Declare Function stringWithString Lib "Foundation.framework" selector "stringWithString:" (clsRef As ptr, Str As ptr) As CFStringRef
		  
		  
		  Dim nsURL As ptr = URLWithString(NSClassFromString("NSURL"), openSettingsURL.CFStringRef(0))
		  
		  Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		  Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		  
		  
		  If ExtensionsXC.GetiOSVersionXC >= 10.0 Then
		    
		    Declare Sub openURL Lib "UIKit" Selector "openURL:options:completionHandler:" (id As Ptr, nsurl As Ptr, options As ptr, completion As ptr)
		    openURL(sharedApp, nsURL, nil, nil)
		    
		  Else
		    
		    Declare Function openURL Lib "UIKit" Selector "openURL:" (id As Ptr, nsurl As Ptr) As Boolean
		    call openURL(sharedApp, nsURL)
		    
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C20746869732066756E6374696F6E20696620796F7520757365206120636F6D62696E6174696F6E206F66204C617267655469746C657320616E64204C617267655469746C65446973706C61794D6F64652E6E65766572
		Sub SetBrightnessXC(extends app as MobileApplication, value as Double)
		  #Pragma unused app
		  
		  
		  Declare Function NSClassFromString Lib "Foundation" (aClassName As CFStringRef) As Ptr
		  Declare Function mainScreen Lib "UIKit" selector "mainScreen" (classRef As Ptr) As ptr
		  Declare sub setBrightness Lib "UIKit" selector "setBrightness:" (obj As Ptr, value As CGFloat)
		  
		  Dim screenRef As ptr = mainScreen(NSClassFromString("UIScreen"))
		  
		  setBrightness(screenRef, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652053746174757320626172207465787420636F6C6F722E
		Sub SetStatusBarStyleXC(extends app As MobileApplication, style As AppExtensionsXC.UIStatusBarStyle)
		  #Pragma Unused app
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		  Declare sub setStatusBarStyle lib "UIKit" selector "setStatusBarStyle:" (obj as ptr, style as UIStatusBarStyle)
		  
		  Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		  setStatusBarStyle(sharedApp, style)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652053746174757320626172207465787420636F6C6F722E
		Sub SetStatusBarStyleXC1(extends app As MobileApplication, style As AppExtensionsXC.UIStatusBarStyle)
		  #Pragma Unused app
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		  Declare sub setStatusBarStyle lib "UIKit" selector "setStatusBarStyle:" (obj as ptr, style as UIStatusBarStyle)
		  
		  Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		  setStatusBarStyle(sharedApp, style)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C20746869732066756E6374696F6E20696620796F7520757365206120636F6D62696E6174696F6E206F66204C617267655469746C657320616E64204C617267655469746C65446973706C61794D6F64652E6E65766572
		Sub SetWindowColorXC(extends app as MobileApplication, value as color)
		  #Pragma unused app
		  
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIKit.UIColor(value)
		  End If
		  
		  Declare Function NSClassFromString Lib "UIKit.framework" (clsName As CFStringRef) As ptr
		  Declare Function sharedApplication Lib "UIKit.framework" selector "sharedApplication" (clsRef As ptr) As ptr
		  Declare Function keyWindow Lib "UIKit.framework" selector "keyWindow" (obj_id As ptr) As ptr
		  
		  Dim myWindowPtr As ptr = keyWindow(sharedApplication(NSClassFromString("UIApplication")))
		  
		  
		  If myWindowPtr = Nil Then
		    Break
		    //this needs to be called from the Activate event, not the Open event
		    Return
		  End If
		  
		  
		  
		  Declare Sub setBackgroundColor Lib "UIKit.framework" selector "setBackgroundColor:" (obj_id As ptr, col As ptr)
		  setBackgroundColor(myWindowPtr, uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SharedApplication() As Ptr
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  declare function sharedApplication lib "UIKit" selector "sharedApplication" (clsRef as ptr) as ptr
		  Return sharedApplication(NSClassFromString("UIApplication"))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1, Description = 4B65657073207468652073637265656E20616C77617973206F6E2E
		#tag Getter
			Get
			  
			  
			  Declare Function isIdleTimerDisabled Lib "UIKit" selector "isIdleTimerDisabled" _
			  (app_id As ptr) As Boolean
			  
			  return isIdleTimerDisabled(SharedApplication)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Declare Sub setIdleTimerDisabled Lib "UIKit" selector "setIdleTimerDisabled:" _
			  (app_id As ptr, value As Boolean)
			  
			  setIdleTimerDisabled(SharedApplication, value)
			  
			End Set
		#tag EndSetter
		Protected IdleTimerDisabled As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UIStatusBarStyle, Flags = &h1
		default
		  LightContent
		DarkContent
	#tag EndEnum


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
