#tag IOSView
Begin iosView vToolButton
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "ToolButtons"
   Top             =   0
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  Dim tb As iOSToolButton
		  
		  tb = iOSToolButton.NewPlain("Red")
		  tb.SetTintColorXC(&cFF0000)
		  Self.RightNavigationToolbar.Add tb
		  
		  tb = iOSToolButton.NewPlain("Blue")
		  tb.SetTintColorXC(&c0000FF)
		  Self.RightNavigationToolbar.Add tb
		  
		  tb = iOSToolButton.NewSystemItem(iOSToolButton.Types.SystemPause)
		  tb.SetTintColorXC(&c00FF00)
		  self.LeftNavigationToolbar.Add tb
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
