#tag Module
Protected Module AppExtensionsXC
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
