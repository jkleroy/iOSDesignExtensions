#tag Class
Protected Class UIMenuElementXC
Inherits NSObjectXC
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
			    
			    Declare function subtitle lib "Foundation" Selector "subtitle" (obj as ptr) as CFStringRef
			    
			    Return subtitle(self)
			    
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
			    
			    Declare sub setsubtitle lib "Foundation" Selector "setSubtitle:" (obj as ptr, value as CFStringRef)
			    
			    setsubtitle(self, value)
			    
			    
			  end if
			End Set
		#tag EndSetter
		subtitle As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  Declare function title lib "Foundation" Selector "title" (obj as ptr) as CFStringRef
			  
			  Return title(self)
			End Get
		#tag EndGetter
		title As String
	#tag EndComputedProperty


	#tag Enum, Name = UIMenuElementAttributes, Flags = &h0
		Disabled = 1
		  Destructive
		Hidden = 4
	#tag EndEnum

	#tag Enum, Name = UIMenuElementState, Flags = &h0
		off = 0
		  on = 1
		mixed = 2
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
		#tag ViewProperty
			Name="title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="subtitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
