#tag Module
Protected Module AccessibilityExtensionsXC
	#tag Method, Flags = &h0
		Sub AccessibilityLabelXC(extends tb As MobileToolbarButton, value As String)
		  
		  
		  Declare sub setAccessibilityLabel lib "Foundation.framework" selector "setAccessibilityLabel:" (obj as ptr, value as CFStringRef)
		  
		  setAccessibilityLabel(tb.Handle, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MakeAccessibleXC(extends control As MobileUIControl, value As Boolean)
		  Declare sub isAccessibilityElement lib "Foundation" selector "setIsAccessibilityElement:" (obj as ptr, value as boolean)
		  
		  isAccessibilityElement(control.Handle, value)
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
