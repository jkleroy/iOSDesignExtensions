#tag MobileScreen
Begin MobileScreen vButtons
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   0
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Buttons"
   Top             =   0
   Begin MobileButton btBackgroundColor
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btBackgroundColor, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btBackgroundColor, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btBackgroundColor, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btBackgroundColor, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Background Color"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   95
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton btCornerRadius
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btCornerRadius, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btCornerRadius, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btCornerRadius, 3, btBackgroundColor, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btCornerRadius, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Corner radius"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   155
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton btCaptionAndImage
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btCaptionAndImage, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btCaptionAndImage, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btCaptionAndImage, 3, btCornerRadius, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btCaptionAndImage, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Image & Caption"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   215
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Button4, 3, btCaptionAndImage, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "First line\nSecond line"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   50
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   275
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button5, 2, <Parent>, 9, False, +1.00, 4, 1, -20, , True
      AutoLayout      =   Button5, 3, Button4, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Clipped Caption"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   40
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   355
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button6, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button6, 1, <Parent>, 9, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Button6, 3, Button5, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button6, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Adjusted Caption"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   180
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   355
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button7, 1, Button5, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button7, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button7, 3, Button6, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button7, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Border 1px"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   40
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   393
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button8
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button8, 1, Button6, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button8, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button8, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button8, 11, Button7, 11, False, +1.00, 4, 1, 0, , True
      Caption         =   "Border 0.5px"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   180
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   393
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton btLeft
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btLeft, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btLeft, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btLeft, 3, Button8, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btLeft, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Left align"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   431
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events btBackgroundColor
	#tag Event
		Sub Opening()
		  
		  Me.SetBackgroundColorXC(&c06BEBD)
		  Me.CaptionColor = &cFFFFFF
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btCornerRadius
	#tag Event
		Sub Opening()
		  
		  Me.SetBackgroundColorXC(&cA0A0A0)
		  Me.SetCornerRadiusXC(8)
		  Me.CaptionColor = &cFFFFFF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btCaptionAndImage
	#tag Event
		Sub Opening()
		  '
		  'Dim img As iOSImage = ExtensionsXC.ImageOriginal(img_green_pattern)
		  'Me.SetBackdropXC(img)
		  
		  Me.SetBackgroundColorXC(&cFB010600)
		  
		  Me.TintColor = &cFFFFFF
		  Me.CaptionColor = &cF7f6f5
		  Dim insets As ExtensionsXC.xcUIEdgeInsets
		  insets.Left = 0
		  insets.Top = 0
		  insets.Bottom = 0
		  insets.Right = 20
		  Me.SetButtonInsetsXC(insets)
		  me.SetCornerRadiusXC(8)
		  Me.SetImageXC(ic8_lock)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Opening()
		  
		  Me.SetBackgroundColorXC(&cDFE2E200)
		  Me.CaptionColor = &c2E2E2E00
		  Me.Caption = "First line" + &u0A + "Second line"
		  Me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.center)
		  Me.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.WordWrap)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Opening()
		  
		  Me.SetBackgroundColorXC(&cDFE2E200)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Opening()
		  
		  Me.SetBackgroundColorXC(&cDFE2E200)
		  Me.AdjustsFontSizeToFitWidthXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button7
	#tag Event
		Sub Opening()
		  
		  Me.SetBorderWidthXC(1.0)
		  Me.SetBorderColorXC(&cFF0000AA)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button8
	#tag Event
		Sub Opening()
		  
		  Me.SetBorderWidthXC(1.0/ExtensionsXC.MainScreenScaleXC)
		  Me.SetBorderColorXC(&cFF0000AA)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btLeft
	#tag Event
		Sub Opening()
		  //Set a border so it is visible
		  Me.SetBorderWidthXC(1.0)
		  
		  me.setContentHorizontalAlignmentXC(ControlExtensionsXC.UIControlContentHorizontalAlignment.Left) //or use .Leading if your app supports Right-to-left languages
		  
		  //Set a 10pt padding to the left
		  me.SetButtonInsetsXC(ExtensionsXC.UIEdgeInsetMake(0, 10, 0, 0)) //Add 10pt padding to the left
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
