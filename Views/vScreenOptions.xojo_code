#tag MobileScreen
Begin MobileScreen vScreenOptions
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 7
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   "ViewExtensions"
   Top             =   0
   Begin MobileSwitch SwitchHomeIndicator
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SwitchHomeIndicator, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   SwitchHomeIndicator, 1, , 0, False, +1.00, 4, 1, 8, , True
      AutoLayout      =   SwitchHomeIndicator, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   SwitchHomeIndicator, 7, , 0, True, +1.00, 4, 1, 51, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Left            =   8
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   115
      Value           =   False
      Visible         =   True
      Width           =   51
      _ClosingFired   =   False
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 1, SwitchHomeIndicator, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 288, , True
      AutoLayout      =   Label2, 3, SwitchHomeIndicator, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   67
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Hide Home Indicator"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   115
      Visible         =   True
      Width           =   288
      _ClosingFired   =   False
   End
   Begin MobileSwitch SwitchUserInterfaceStyle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SwitchUserInterfaceStyle, 1, SwitchHomeIndicator, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SwitchUserInterfaceStyle, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   SwitchUserInterfaceStyle, 3, SwitchHomeIndicator, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   SwitchUserInterfaceStyle, 8, , 0, True, +1.00, 4, 1, 31, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Left            =   8
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   154
      Value           =   False
      Visible         =   True
      Width           =   51
      _ClosingFired   =   False
   End
   Begin MobileLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label3, 1, SwitchUserInterfaceStyle, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 4, 1, 288, , True
      AutoLayout      =   Label3, 3, SwitchUserInterfaceStyle, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   67
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Force Dark Mode"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   154
      Visible         =   True
      Width           =   288
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub AppearanceChanged(dark As Boolean)
		  
		  Break
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  'self.SetPrefersStatusBarHiddenXC(true)
		  
		  'self.SetPrefersHomeIndicatorAutoHiddenXC(True)
		  
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events SwitchHomeIndicator
	#tag Event
		Sub ValueChanged()
		  self.SetPrefersHomeIndicatorAutoHiddenXC(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SwitchUserInterfaceStyle
	#tag Event
		Sub ValueChanged()
		  
		  if me.Value then
		    
		    self.SetUserInterfaceStyleXC(ControlExtensionsXC.UIUserInterfaceStyle.Dark)
		    
		  Else
		    
		    self.SetUserInterfaceStyleXC(ControlExtensionsXC.UIUserInterfaceStyle.Unspecified)
		    
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
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
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
