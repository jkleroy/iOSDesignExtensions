#tag MobileScreen
Begin MobileScreen Screen1
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
   Title           =   "Untitled"
   Top             =   0
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 4, 1, 111, , True
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Set Blue"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   34
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   111
      Visible         =   False
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 11, Button1, 11, False, +1.00, 4, 1, , , True
      AutoLayout      =   Button2, 1, <Parent>, 1, False, +1.00, 4, 1, 194, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Set Clear"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   194
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   111
      Visible         =   False
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button3, 3, <Parent>, 3, False, +1.00, 4, 1, 211, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "UIColor"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   34
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   211
      Visible         =   False
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn, 1, Button3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btn, 3, <Parent>, 3, False, +1.00, 4, 1, 282, , True
      AutoLayout      =   btn, 8, , 0, False, +1.00, 4, 1, 30, , True
      borderColorXC   =   &c00000000
      Caption         =   "No class"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   34
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   282
      Visible         =   False
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn1, 1, btn, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn1, 3, btn, 4, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btn1, 7, , 0, False, +1.00, 4, 2, 250, , True
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
      Left            =   34
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   412
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn2, 1, btn1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn2, 7, , 0, False, +1.00, 4, 2, 100, , True
      AutoLayout      =   btn2, 3, btn1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn2, 8, , 0, False, +1.00, 4, 2, 30, , True
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
      Left            =   34
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   450
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn3, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn3, 1, btn2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn3, 3, btn2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn3, 7, , 0, False, +1.00, 4, 2, 100, , True
      borderColorXC   =   &c00000000
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Config"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryActionXC=   False
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Left            =   34
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   488
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btn4, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn4, 1, btn3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn4, 3, btn3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn4, 7, , 0, False, +1.00, 4, 2, 100, , True
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
      Left            =   34
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryActionXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   526
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  
		  btn.borderColorXC = &cFF0000
		  'call btn.borderColorXC
		  
		  btn.borderWidthXC = 1.0
		  'call btn.borderWidthXC
		  
		  btn.highlightedXC = true
		  call btn.highlightedXC
		  
		  
		  
		  Dim config1 As ControlsXC.UIButtonConfiguration = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  Dim config2 As ControlsXC.UIButtonConfiguration
		  Dim config3 As ControlsXC.UIButtonConfiguration
		  Dim config4 As ControlsXC.UIButtonConfiguration
		  
		  
		  config2 = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.gray)
		  config3 = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  config4 = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  config1.cornerRadius = 100
		  config2.cornerRadius = 10
		  config3.cornerRadius = 20
		  config4.cornerRadius = 100
		  
		  
		  btn1.TintColor = &cFF9620
		  
		  config1.title = "Start Download"
		  config1.subtitle = "(Downloads random image)"
		  config1.titlePadding = 5
		  config1.titleAlignment = UIButtonConfiguration.TitleAlignments.Leading
		  
		  config1.image = Picture.SystemImage("arrow.down.square.fill", 0)
		  config1.imagePadding = 10
		  config1.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Leading
		  
		  'config.buttonSize = UIButtonConfiguration.Sizes.Large
		  
		  btn1.configurationXC = config1
		  
		  
		  //Button2
		  
		  
		  'btn2.CaptionColor = &c0
		  'btn2.TintColor = &c209030
		  config2.title = "Download"
		  config2.subtitle = "(Downloads random image)"
		  config2.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Bottom
		  config2.image = Picture.SystemImage("arrow.down.square.fill", 0)
		  
		  config2.imagePadding = 10
		  
		  config2.titleAlignment = UIButtonConfiguration.TitleAlignments.Trailing
		  config2.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Trailing
		  
		  'config.buttonSize = UIButtonConfiguration.Sizes.Medium
		  
		  btn2.configurationXC = config2
		  
		  
		  
		  //Button3
		  
		  
		  btn3.TintColor = &c2096FF
		  config3.title = "Stop"
		  'config.subtitle = "(Downloads random image)"
		  'config.titleAlignment = UIButtonConfiguration.TitleAlignments.Trailing
		  
		  'config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Leading
		  'config.image = Picture.SystemImage("arrow.down.square.fill", 0)
		  
		  'config.buttonSize = UIButtonConfiguration.Sizes.Small
		  
		  btn3.configurationXC = config3
		  
		  //Button4
		  
		  
		  btn4.TintColor = &c707070
		  config4.title = "Stop"
		  'config.subtitle = "(Downloads random image)"
		  'config.titleAlignment = UIButtonConfiguration.TitleAlignments.Trailing
		  
		  'config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Trailing
		  'config.image = Picture.SystemImage("arrow.down.square.fill", 0)
		  'config.imagePadding = 10
		  
		  'config.buttonSize = UIButtonConfiguration.Sizes.Mini
		  
		  config4.baseBackgroundColor = &cFF0000
		  
		  config4.baseForegroundColor = &cFFFFFF
		  'config4.cornerStyle = UIButtonConfiguration.cornerStyles.Capsule
		  
		  btn4.configurationXC = config4
		  
		  
		  
		  
		  'config1.cornerStyle = UIButtonConfiguration.cornerStyles.Dynamic
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CancelIndicator()
		  
		  Dim config as UIButtonConfiguration = btn4.configurationXC
		  
		  
		  config.showsActivityIndicator = False
		  btn4.Enabled = True
		  
		  btn4.configurationXC = config
		End Sub
	#tag EndMethod

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
		Sub Pressed()
		  Button3.SetBackgroundColorXC(&c5050FF)
		  
		  btn.SetBackgroundColorXC(&c5050FF)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  Button3.SetBackgroundColorXC(color.Clear)
		  
		  btn.SetBackgroundColorXC(color.Clear)
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
#tag EndEvents
#tag Events btn4
	#tag Event
		Sub Pressed()
		  
		  
		  
		  Dim config as UIButtonConfiguration = me.configurationXC
		  
		  
		  config.showsActivityIndicator = True
		  me.Enabled = False
		  
		  
		  me.configurationXC = config
		  
		  
		  timer.CallLater(1000, AddressOf CancelIndicator)
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
