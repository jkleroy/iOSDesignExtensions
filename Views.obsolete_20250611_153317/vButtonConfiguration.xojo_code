#tag MobileScreen
Begin MobileScreen vButtonConfiguration
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
   Title           =   "Button Configuration (iOS 15+)"
   Top             =   0
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 250, , True
      Caption         =   "plain ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   111
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "The methods used in this screen are available for iOS15+"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   335
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "gray ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   149
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, Button2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "tinted ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   187
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 1, Button3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "filled ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   225
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button5, 1, Button4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button5, 3, Button4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "borderless ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   263
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button6, 1, Button5, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button6, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button6, 3, Button5, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button6, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "bordered ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   301
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button7, 1, Button6, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button7, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button7, 3, Button6, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button7, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "bordered tinted Configuration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   339
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button8, 1, Button7, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button8, 7, , 0, False, +1.00, 4, 1, 250, , True
      AutoLayout      =   Button8, 3, Button7, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button8, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "bordered prominent Configuration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   377
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.plain)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.gray)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.tinted)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.filled)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.borderless)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.bordered)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button7
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.borderedTinted)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button8
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.borderedProminent)
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
