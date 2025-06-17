#tag MobileContainer
Begin MobileContainer ccButtonConfiguration
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 7
   Height          =   480
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   320
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 250, , True
      Caption         =   "plain ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   35
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   58
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 250, , True
      Caption         =   "gray ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   35
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   96
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 250, , True
      Caption         =   "tinted ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   35
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   134
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 250, , True
      Caption         =   "filled ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   35
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   172
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn1, 1, Button4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn1, 3, Button4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn1, 7, , 0, False, +1.00, 4, 1, 250, , True
      borderColorXC   =   &c00000000
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Start Download"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryActionXC=   False
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Left            =   35
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   210
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
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
      Top             =   20
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn2, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn2, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn2, 3, btn1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn2, 7, , 0, False, +1.00, 4, 2, 100, , True
      borderColorXC   =   &c00000000
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Delete"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryActionXC=   False
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Left            =   110
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   248
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn3, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn3, 1, btn1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn3, 3, btn2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn3, 7, , 0, False, +1.00, 4, 1, 250, , True
      borderColorXC   =   &c00000000
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Start Download"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryActionXC=   False
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Left            =   35
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   286
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn4, 1, btn2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn4, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btn4, 3, btn3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn4, 8, , 0, False, +1.00, 4, 1, 30, , True
      borderColorXC   =   &c00000000
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Popup"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryActionXC=   False
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Left            =   110
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   324
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Method, Flags = &h0
		Sub CancelIndicatorBtn1()
		  
		  Dim config as UIButtonConfiguration = btn1.configurationXC
		  
		  
		  config.showsActivityIndicator = False
		  
		  
		  btn1.UpdateConfigurationXC(config)
		End Sub
	#tag EndMethod


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
#tag Events btn1
	#tag Event
		Sub Pressed()
		  
		  Dim config As UIButtonConfiguration = me.configurationXC
		  
		  config.showsActivityIndicator = True
		  
		  me.UpdateConfigurationXC(config)
		  
		  timer.CallLater(1500, AddressOf CancelIndicatorBtn1)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.tinted)
		  
		  
		  
		  config.cornerRadius = 100
		  
		  
		  
		  me.TintColor = &cFF9620
		  
		  config.baseForegroundColor = &cE15612
		  
		  config.title = "Start Download"
		  config.subtitle = "(Downloads random image)"
		  config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Leading
		  
		  config.image = Picture.SystemImage("arrow.down.square.fill", 0)
		  config.imagePadding = 10
		  config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Leading
		  
		  me.configurationXC = config
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn2
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  config.cornerRadius = 10
		  
		  
		  
		  me.TintColor = &cFF5050
		  
		  config.title = "Delete"
		  
		  config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Automatic
		  
		  config.image = Picture.SystemImage("delete.left", 0)
		  config.imagePadding = 10
		  config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Trailing
		  
		  me.configurationXC = config
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn3
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  config.cornerRadius = 100
		  
		  
		  
		  
		  
		  config.title = "Start Download"
		  config.subtitle = "(Downloads random image)"
		  config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Trailing
		  
		  config.image = Picture.SystemImage("arrow.down.square.fill", 0)
		  config.imagePadding = 10
		  config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Trailing
		  
		  me.configurationXC = config
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn4
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.gray)
		  
		  
		  
		  config.cornerRadius = 10
		  
		  
		  
		  
		  
		  config.title = "Popup"
		  
		  config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Automatic
		  
		  config.image = Picture.SystemImage("chevron.up.chevron.down", 0)
		  config.imagePadding = 10
		  config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Trailing
		  
		  me.configurationXC = config
		  
		  me.showsMenuAsPrimaryActionXC = True
		  me.changesSelectionAsPrimaryActionXC = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="320"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="480"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
