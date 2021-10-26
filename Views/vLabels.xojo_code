#tag MobileScreen
Begin MobileScreen vLabels
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   0
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   "&h00000000"
   Title           =   "Labels"
   Top             =   0
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "The text in this label will automatically scale to fit the entire text."
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   73
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblLargeTitle
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblLargeTitle, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblLargeTitle, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblLargeTitle, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblLargeTitle, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "LargeTitle"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   111
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblTitle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblTitle1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblTitle1, 1, lblLargeTitle, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblTitle1, 3, lblLargeTitle, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblTitle1, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Title1"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   149
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblTitle2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblTitle2, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblTitle2, 1, lblTitle1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblTitle2, 3, lblTitle1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblTitle2, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Title2"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   187
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblTitle3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblTitle3, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblTitle3, 1, lblTitle2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblTitle3, 3, lblTitle2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblTitle3, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Title3"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   225
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblHeadline
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblHeadline, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblHeadline, 1, lblTitle3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblHeadline, 3, lblTitle3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblHeadline, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Headline"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   263
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblHeadline1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblHeadline1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblHeadline1, 1, lblHeadline, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblHeadline1, 3, lblHeadline, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblHeadline1, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Sub Headline"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   301
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblBody
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblBody, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblBody, 1, lblHeadline1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblBody, 3, lblHeadline1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblBody, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Body"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   339
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblCallout
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblCallout, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblCallout, 1, lblBody, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCallout, 3, lblBody, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblCallout, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Callout"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   377
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblFootnote
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblFootnote, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblFootnote, 1, lblCallout, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblFootnote, 3, lblCallout, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblFootnote, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Footnote"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   415
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblCaption1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblCaption1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblCaption1, 1, lblFootnote, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCaption1, 3, lblFootnote, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblCaption1, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Caption1"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   453
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel lblCaption2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblCaption2, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   lblCaption2, 1, lblCaption1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblCaption2, 3, lblCaption1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   lblCaption2, 7, , 0, False, +1.00, 4, 1, 280, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Caption2"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   491
      Visible         =   True
      Width           =   280
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, lblCaption2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 3, lblCaption2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 2, 151, , True
      Caption         =   "Title in Button"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   529
      Visible         =   True
      Width           =   151
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events Label1
	#tag Event
		Sub Opening()
		  me.AdjustsFontSizeToFitWidthXC
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblLargeTitle
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.largeTitle)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblTitle1
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.title1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblTitle2
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.title2)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblTitle3
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.title3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblHeadline
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.headline)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblHeadline1
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.subHeadline)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblBody
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.body)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblCallout
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.callout)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblFootnote
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.footnote)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblCaption1
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.caption1)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblCaption2
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.caption2)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Opening()
		  me.AdjustsFontForContentSizeCategoryXC(ControlExtensionsXC.UIFontTextStyle.title1)
		End Sub
	#tag EndEvent
#tag EndEvents
