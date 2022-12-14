#tag Module
Protected Module AccessibilityExtensionsXC
	#tag Method, Flags = &h0, Description = 5365747320746865206163636573736962696C697479206C6162656C20666F7220746865204D6F62696C65746F6F6C626172427574746F6E2E
		Sub AccessibilityLabelXC(extends tb As MobileToolbarButton, assigns value As String)
		  
		  tb.SetAccessibilityLabelXC(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206163636573736962696C697479206C6162656C20666F7220746865204D6F62696C65746F6F6C626172427574746F6E2E
		Sub AccessibilityLabelXC(extends control As MobileUIControl, assigns value As String)
		  
		  
		  
		  Declare sub setAccessibilityLabel lib "Foundation.framework" selector "setAccessibilityLabel:" (obj as ptr, value as CFStringRef)
		  
		  setAccessibilityLabel(control.Handle, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function isVoiceOverRunningXC() As Boolean
		  
		  Declare function isVoiceOverRunning lib "UIKit" alias "UIAccessibilityIsVoiceOverRunning" as Boolean
		  
		  Return isVoiceOverRunning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeAccessibleXC(extends control As MobileUIControl, value As Boolean)
		  Declare sub isAccessibilityElement lib "Foundation" selector "setIsAccessibilityElement:" (obj as ptr, value as boolean)
		  
		  isAccessibilityElement(control.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostAnnouncementNotificationXC(value As String)
		  'declare sub UIAccessibilityPostNotification lib "UIKit" Selector "UIAccessibilityPostNotification"  (obj as ptr, notification as ptr, value as ptr)
		  
		  if isVoiceOverRunningXC then
		    
		    Declare sub UIAccessibilityPostNotification lib "UIKit" alias "UIAccessibilityPostNotification" (notification as ptr, value as CFStringRef)
		    
		    Dim type As ptr = ExtensionsXC.LoadConstantXC("UIKit", "UIAccessibilityAnnouncementNotification")
		    
		    
		    'Dim s As new NSString(value)
		    
		    UIAccessibilityPostNotification(type, value)
		    
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAccessibilityLabelXC(extends tb As MobileToolbarButton, value As String)
		  
		  
		  Declare sub setAccessibilityLabel lib "Foundation.framework" selector "setAccessibilityLabel:" (obj as ptr, value as CFStringRef)
		  
		  setAccessibilityLabel(tb.Handle, value)
		  
		End Sub
	#tag EndMethod


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
