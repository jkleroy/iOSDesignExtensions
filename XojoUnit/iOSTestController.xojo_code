#tag Class
Protected Class iOSTestController
Inherits TestController
	#tag Event
		Sub InitializeTestGroups()
		  // Instantiate TestGroup subclasses here so that they can be run
		  
		  Dim group As TestGroup
		  
		  group = New XojoUnitTests(Self, "Assertion")
		  'group = New XojoUnitFailTests(Self, "Always Fail")
		  group = new XojoUnit_ButtonExtensions(self, "Button Extensions")
		  group = new XojoUnit_ControlExtensions(self, "Control Extensions")
		  group = new XojoUnit_LayerExtensions(self, "Layer Extensions")
		  group = new XojoUnit_ExtensionsXC(self, "Extensions")
		  group = new XojoUnit_ScrollViewExtensionsXC(self, "ScrollView Extensions")
		End Sub
	#tag EndEvent


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
