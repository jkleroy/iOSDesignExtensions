#tag MobileContainer
Begin MobileContainer ccButtonConfiguration
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 7
   Height          =   982
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   320
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 3, lblHeader1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "plain ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
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
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button2, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "gray ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
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
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button3, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "tinted ButtonConfiguration"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
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
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button4, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "filled ButtonConfiguration"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
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
      AdjustTextSizeToFit=   False
      AutoLayout      =   btn1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn1, 1, Button4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn1, 3, lblHeader3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn1, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Start Download"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   35
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   462
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileLabel lblHeader1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   lblHeader1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblHeader1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblHeader1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   lblHeader1, 3, <Parent>, 3, False, +1.00, 4, 1, *kStdGapCtlToViewV, , True
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
      AdjustTextSizeToFit=   False
      AutoLayout      =   btn2, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn2, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn2, 3, btn1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn2, 7, , 0, False, +1.00, 4, 2, 100, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Start Download"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   110
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   500
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btn3, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn3, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btn3, 3, btn2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn3, 7, , 0, False, +1.00, 4, 1, 120, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Delete"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   100
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   538
      Visible         =   True
      Width           =   120
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btn4, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btn4, 3, btn3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn4, 7, , 0, False, +1.00, 4, 2, 100, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Popup"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   110
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   576
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btn5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btn5, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btn5, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btn5, 3, btn4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btn5, 7, , 0, False, +1.00, 4, 2, 100, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Shows menu"
      CaptionColor    =   &c007AFF00
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   110
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   614
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel lblHeader4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   lblHeader4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblHeader4, 1, lblHeader1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblHeader4, 3, btn5, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblHeader4, 7, , 0, False, +1.00, 4, 1, 100, , True
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
      Text            =   "Button Size"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   664
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnSizeMini
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnSizeMini, 8, , 0, False, +1.00, 4, 2, 10, , True
      AutoLayout      =   btnSizeMini, 1, lblHeader4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnSizeMini, 3, lblHeader4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnSizeMini, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Mini"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   10
      highlightedXC   =   False
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   702
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnSizeSmall
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnSizeSmall, 8, , 0, False, +1.00, 4, 2, 10, , True
      AutoLayout      =   btnSizeSmall, 1, btnSizeMini, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btnSizeSmall, 3, btnSizeMini, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnSizeSmall, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Small"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   10
      highlightedXC   =   False
      Icon            =   0
      Left            =   58
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   702
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnSizeMedium
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnSizeMedium, 1, btnSizeSmall, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btnSizeMedium, 7, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btnSizeMedium, 3, btnSizeSmall, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnSizeMedium, 8, , 0, False, +1.00, 4, 2, 10, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Medium"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   10
      highlightedXC   =   False
      Icon            =   0
      Left            =   96
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   702
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnSizeLarge
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnSizeLarge, 1, btnSizeMedium, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btnSizeLarge, 7, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btnSizeLarge, 3, btnSizeMedium, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnSizeLarge, 8, , 0, False, +1.00, 4, 2, 10, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Large"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   10
      highlightedXC   =   False
      Icon            =   0
      Left            =   134
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   702
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin MobileLabel lblCornerSize
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   lblCornerSize, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblCornerSize, 1, btnSizeMini, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCornerSize, 3, btnSizeLarge, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblCornerSize, 7, , 0, False, +1.00, 4, 1, 100, , True
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
      Text            =   "Corner Size"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   732
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnCornerSmall
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnCornerSmall, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnCornerSmall, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btnCornerSmall, 3, lblCornerSize, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnCornerSmall, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Small"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   145
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   770
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnCornerMedium
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnCornerMedium, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnCornerMedium, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btnCornerMedium, 3, btnCornerSmall, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnCornerMedium, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Medium"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   145
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   808
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btnCornerCapsule
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnCornerCapsule, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      AutoLayout      =   btnCornerCapsule, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btnCornerCapsule, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btnCornerCapsule, 3, btnCornerMedium, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btnCornerCapsule, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   "Capsule"
      CaptionColor    =   &c00000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      highlightedXC   =   False
      Icon            =   0
      Left            =   145
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   1
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      toolTipXC       =   ""
      Top             =   846
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin MobileButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button5, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button5, 3, lblHeader2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 4, 1, 200, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Glass"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   60
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   260
      Visible         =   True
      Width           =   200
      _ClosingFired   =   False
   End
   Begin MobileButton Button6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button6, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button6, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button6, 3, Button5, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button6, 7, , 0, False, +1.00, 4, 1, 200, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Prominent Glass"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   60
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   298
      Visible         =   True
      Width           =   200
      _ClosingFired   =   False
   End
   Begin MobileLabel lblHeader2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   lblHeader2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblHeader2, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblHeader2, 3, Button4, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblHeader2, 7, , 0, False, +1.00, 4, 1, 100, , True
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
      Text            =   "iOS 26 only"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   
      Top             =   222
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button7, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button7, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button7, 3, Button6, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button7, 7, , 0, False, +1.00, 4, 1, 200, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Clear Glass"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   60
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   336
      Visible         =   True
      Width           =   200
      _ClosingFired   =   False
   End
   Begin MobileButton Button8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button8, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button8, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button8, 3, Button7, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button8, 7, , 0, False, +1.00, 4, 1, 200, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Prominent Clear Glass"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   60
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   374
      Visible         =   True
      Width           =   200
      _ClosingFired   =   False
   End
   Begin MobileLabel lblHeader3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   lblHeader3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   lblHeader3, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   lblHeader3, 3, Button8, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   lblHeader3, 7, , 0, False, +1.00, 4, 1, 200, , True
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
      Text            =   "Advanced Configurations"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   
      Top             =   424
      Visible         =   True
      Width           =   200
      _ClosingFired   =   False
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CancelIndicatorBtn1()
		  
		  Dim config as UIButtonConfiguration = btn1.configurationXC
		  
		  
		  config.showsActivityIndicator = False
		  
		  btn1.Enabled = True
		  
		  
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
		  
		  me.Enabled = False
		  
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
		  config.subtitle = "(Shows progress on press)"
		  config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Center
		  
		  'config.image = Picture.SystemImage("arrow.down.square.fill", 0)
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
#tag Events btn3
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  'config.cornerRadius = 10
		  
		  
		  
		  me.TintColor = &cFF5050
		  
		  config.title = "Delete"
		  
		  config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Automatic
		  
		  config.image = Picture.SystemImage("delete.left", 0)
		  config.imagePadding = 10
		  config.imagePlacement = UIButtonConfiguration.NSDirectionalRectEdge.Trailing
		  
		  config.cornerStyle = UIButtonConfiguration.CornerStyles.Capsule
		  
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
		  
		  'config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Automatic
		  
		  
		  me.configurationXC = config
		  
		  
		  me.showsMenuAsPrimaryAction = True
		  me.changesSelectionAsPrimaryAction = True //This allows to show a chevron on the trailing edge
		  
		  
		  //Creating the menu
		  
		  #if XojoVersion < 2026.02
		    Dim actions() as UIActionXC
		    
		    actions.add me.CreateAction("Edit", Picture.SystemImage("slider.horizontal.3", 0), "edit")
		    
		    actions.add me.CreateAction("Duplicate", Picture.SystemImage("plus.square.on.square", 0), "duplicate")
		    
		    actions.add me.CreateAction("Home", Picture.SystemImage("house", 0), "home")
		    
		    
		    
		    me.SetMenu("Options", actions)
		    
		  #else
		    
		    Dim menu As new MobileMenuItem("Options")
		    
		    Dim item As new MobileMenuItem("Option1", "edit")
		    item.Icon = Picture.SystemImage("slider.horizontal.3", 0)
		    menu.AddMenu item
		    
		    item = new MobileMenuItem("Option2", "duplicate")
		    item.Icon = Picture.SystemImage("plus.square.on.square", 0)
		    item.DisplayMode = MobileMenuItem.DisplayModes.Regular
		    menu.AddMenu item
		    
		    item = new MobileMenuItem("Option3", "home")
		    item.Icon = Picture.SystemImage("house", 0)
		    menu.AddMenu item
		    
		    me.Menu = menu
		    
		    
		    me.DisplayMenuAsAction = True
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(action as UIActionXC)
		  
		  
		  MessageBox("Action: " + action.identifier + EndOfLine + "was selected")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn5
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.gray)
		  
		  
		  
		  config.cornerRadius = 10
		  
		  
		  config.title = "Popup"
		  
		  'config.titlePadding = 5
		  config.titleAlignment = UIButtonConfiguration.TitleAlignments.Automatic
		  
		  
		  me.configurationXC = config
		  
		  me.showsMenuAsPrimaryAction = True
		  'me.changesSelectionAsPrimaryAction = True
		  
		  
		  //Creating the menu
		  
		  Dim actions() as UIActionXC
		  
		  actions.add me.CreateAction("Edit", Picture.SystemImage("slider.horizontal.3", 0), "edit")
		  
		  actions.add me.CreateAction("Duplicate", Picture.SystemImage("plus.square.on.square", 0), "duplicate")
		  
		  Dim deleteAction as UIActionXC = me.CreateAction("Delete", Picture.SystemImage("trash", 0), "delete")
		  deleteAction.SetAttributes(UInteger(UIActionXC.UIMenuElementAttributes.Destructive))
		  
		  actions.Add deleteAction
		  
		  me.SetMenu("Options", actions)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(action as UIActionXC)
		  
		  MessageBox("Action: " + action.identifier + EndOfLine + "was selected")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSizeMini
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  config.title = "Mini"
		  
		  config.buttonSize = UIButtonConfiguration.Sizes.Mini
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSizeSmall
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  
		  config.title = "Small"
		  
		  config.buttonSize = UIButtonConfiguration.Sizes.Small
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSizeMedium
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  
		  config.title = "Medium"
		  
		  config.buttonSize = UIButtonConfiguration.Sizes.Medium
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSizeLarge
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  
		  config.title = "Large"
		  
		  config.buttonSize = UIButtonConfiguration.Sizes.Large
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCornerSmall
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  
		  config.title = "Small"
		  
		  config.cornerStyle = UIButtonConfiguration.cornerStyles.Small
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCornerMedium
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  
		  config.title = "Medium"
		  
		  config.cornerStyle = UIButtonConfiguration.cornerStyles.Medium
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCornerCapsule
	#tag Event
		Sub Opening()
		  
		  Dim config As ControlsXC.UIButtonConfiguration
		  
		  config = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.filled)
		  
		  
		  
		  
		  
		  config.title = "Capsule"
		  
		  config.cornerStyle = UIButtonConfiguration.cornerStyles.Capsule
		  
		  
		  
		  me.configurationXC = config
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.glass)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.prominentGlass)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button7
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.clearGlass)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button8
	#tag Event
		Sub Opening()
		  
		  
		  me.SetConfigurationXC(ButtonExtensionsXC.Configurations.prominentClearGlass)
		  
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
