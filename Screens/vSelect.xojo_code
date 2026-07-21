#tag MobileScreen
Begin MobileScreen vSelect
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   NavigationBarColor=   
   NavigationBarTextColor=   
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   ""
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
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
      MaximumCharactersAllowed=   0
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
      _ClosingFired   =   False
   End
   Begin MobileSegmentedButton SegmentedButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedButton1, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   SegmentedButton1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   SegmentedButton1, 3, <Parent>, 3, False, +1.00, 4, 1, 123, , True
      AutoLayout      =   SegmentedButton1, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      LastSegmentIndex=   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      SegmentCount    =   0
      Segments        =   "Automatic\n\nTrue\rTile\n\nFalse\rOverlay\n\nFalse\rDisplace\n\nFalse"
      SelectedSegmentIndex=   0
      TintColor       =   
      Top             =   123
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label2, 2, SegmentedButton1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 200, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   100
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Split Behavior"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   73
      Visible         =   True
      Width           =   200
      _ClosingFired   =   False
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
		      Self.ParentSplitView.setDisplayModeXC(SplitViewExtensionsXC.UISplitViewControllerDisplayMode.Automatic)
		      app.currentSplitMode = SplitViewExtensionsXC.UISplitViewControllerDisplayMode.Automatic
		    Else
		      Self.ParentSplitView.setDisplayModeXC(SplitViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly)
		      app.currentSplitMode = SplitViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly
		    end if
		    
		  Case "menu"
		    Self.ParentSplitView.setDisplayModeXC(SplitViewExtensionsXC.UISplitViewControllerDisplayMode.oneBesideSecondary)
		  End Select
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events SegmentedButton1
	#tag Event
		Sub Pressed(segmentedIndex As Integer)
		  
		  select case segmentedIndex
		    
		  case 0 
		    ParentSplitView.SetPreferredSplitBehaviorXC(SplitViewExtensionsXC.UISplitViewControllerSplitBehavior.Automatic)
		    
		  case 1 
		    ParentSplitView.SetPreferredSplitBehaviorXC(SplitViewExtensionsXC.UISplitViewControllerSplitBehavior.Tile)
		    
		  case 2 
		    ParentSplitView.SetPreferredSplitBehaviorXC(SplitViewExtensionsXC.UISplitViewControllerSplitBehavior.Overlay)
		    
		  case 3 
		    ParentSplitView.SetPreferredSplitBehaviorXC(SplitViewExtensionsXC.UISplitViewControllerSplitBehavior.Displace)
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mTabBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarTextColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
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
