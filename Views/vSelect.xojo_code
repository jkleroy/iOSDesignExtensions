#tag MobileScreen
Begin MobileScreen vSelect
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   ""
   Top             =   0
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 300, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   10
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Select an example from the list on the left"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   269
      Visible         =   True
      Width           =   300
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  Dim tb As MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.Plain, "FullScreen")
		  tb.Tag = "fullscreen"
		  self.RightNavigationToolbar.AddButton tb
		  
		  
		  tb = new MobileToolbarButton(MobileToolbarButton.Types.Plain, "List")
		  tb.Tag = "menu"
		  self.LeftNavigationToolbar.AddButton tb
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  
		  Select case button.Tag
		    
		  Case "fullscreen"
		    if app.currentSplitMode = SplitViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly then
		      Self.ParentSplitView.setDisplayModeXC(ViewExtensionsXC.UISplitViewControllerDisplayMode.Automatic)
		      app.currentSplitMode = SplitViewExtensionsXC.UISplitViewControllerDisplayMode.Automatic
		    Else
		      Self.ParentSplitView.setDisplayModeXC(ViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly)
		      app.currentSplitMode = SplitViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly
		    end if
		    
		  Case "menu"
		    Self.ParentSplitView.setDisplayModeXC(ViewExtensionsXC.UISplitViewControllerDisplayMode.oneOverSecondary)
		    
		  End Select
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="TabIcon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
