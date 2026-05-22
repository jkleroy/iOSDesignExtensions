#tag Class
Protected Class UIImageSymbolConfiguration
	#tag Method, Flags = &h0
		Function ApplyConfiguration(otherConfiguration as UIImageSymbolConfiguration) As UIImageSymbolConfiguration
		  
		  
		  
		  Declare Function configurationByApplyingConfiguration Lib "Foundation" Selector "configurationByApplyingConfiguration:" ( obj as ptr, otherConfiguration as Ptr ) As Ptr
		  
		  Var config As new UIImageSymbolConfiguration( configurationByApplyingConfiguration(self.handle, otherConfiguration.handle) )
		  
		  Return config
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor(value as ptr)
		  
		  self.handle = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub Untitled()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		handle As Ptr
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
		#tag ViewProperty
			Name="handle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
