#tag MobileScreen
Begin MobileScreen vTabBar
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "TabBar"
   Top             =   0
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 4, 1, 92, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 2, 60, , True
      Caption         =   "Set Badge"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   92
      Visible         =   True
      Width           =   60
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button2, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Open child view"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   130
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 1, Button2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Open child view (hide tabbar)"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   168
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button4, 1, Button3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Change TabBar color"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   206
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button5, 1, Button4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button5, 3, Button4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Change Tab button color"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   244
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button6, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button6, 1, Button5, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button6, 3, Button5, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button6, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Change Tab page"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   282
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 1, Button6, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   Switch1, 3, Button6, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 4, 1, 31, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   320
      Value           =   False
      Visible         =   True
      Width           =   51
      _ClosingFired   =   False
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, Switch1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 3, Switch1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   79
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "TabBar shadow"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   320
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  Self.SetTabBarButtonColorXC(&cFC7B5900)
		  
		  Self.SetTabBarColorXC(&cEFFF8F)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  
		  Dim tb As MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.Plain, "Back")
		  Self.LeftNavigationToolbar.AddButton tb
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  #Pragma Unused button
		  
		  If Self.ParentSplitView.Available Then
		    Dim scr As New iPadLayout
		    app.CurrentLayout.Content =  scr.Content
		    
		  Else
		    Dim scr As New iPhoneLayout
		    App.CurrentLayout.Content = scr.Content
		    
		  End If
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  
		  Static newBadge As String 
		  
		  if newBadge.IsEmpty then
		    newBadge = "10"
		  else
		    newBadge = ""
		  end if
		  
		  
		  self.SetTabBarBadgeXC(1, newBadge)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  
		  
		  Dim v As New vEmpty
		  
		  self.PushTo(v)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Pressed()
		  
		  
		  Dim v As New vEmpty
		  
		  self.pushToHideTabBarXC(v)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Pressed()
		  
		  Static backColor As Color = &cEFFF8F
		  
		  if backColor = &cEFFF8F then
		    backColor = color.Clear
		    
		  else
		    backColor = &cEFFF8F
		  end if
		  
		  Self.SetTabBarColorXC(backColor)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Pressed()
		  
		  Static buttonColor As Color = &cFC7B59
		  
		  if buttonColor = &cFC7B59 then
		    buttonColor = &cFC00FF
		    
		  else
		    buttonColor = &cFC7B59
		  end if
		  
		  Self.SetTabBarButtonColorXC(buttonColor)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Pressed()
		  
		  TabBarExtensionsXC.SetTabPageXC(1, False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  
		  if me.Value then
		    
		    self.SetTabBarShadowColorXC(color.Blue)
		    
		  else
		    
		    self.SetTabBarShadowColorXC(color.Clear)
		    
		    
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
