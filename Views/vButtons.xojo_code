#tag IOSView
Begin iosView vButtons
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Buttons"
   Top             =   0
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Button"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   95
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button2, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Button"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   155
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 1, Button2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Button"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   215
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Button4, 1, Button3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Button"
      Enabled         =   True
      Height          =   50.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   275
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button5, 2, <Parent>, 9, False, +1.00, 4, 1, -20, , True
      AutoLayout      =   Button5, 3, Button4, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Clipped Caption"
      Enabled         =   True
      Height          =   30.0
      Left            =   40
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   355
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button6, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button6, 1, <Parent>, 9, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Button6, 3, Button5, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button6, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Adjusted Caption"
      Enabled         =   True
      Height          =   30.0
      Left            =   180
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   355
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton Button7
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button7, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button7, 1, Button4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button7, 3, Button6, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button7, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Button"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   "&c007AFF00"
      TextFont        =   ""
      TextSize        =   0
      Top             =   415
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Open()
		  
		  Me.SetBackgroundColorXC(&c06BEBD)
		  Me.TextColor = &cFFFFFF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Open()
		  
		  Me.SetBackgroundColorXC(&c06BEBD)
		  Me.SetCornerRadiusXC(8)
		  Me.TextColor = &cFFFFFF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Open()
		  '
		  'Dim img As iOSImage = ExtensionsXC.ImageOriginal(img_green_pattern)
		  'Me.SetBackdropXC(img)
		  
		  Me.SetBackgroundColorXC(&cFB010600)
		  Me.SetTintColor(&cFFFFFF)
		  Me.TextColor = &cF7f6f5
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
		Sub Open()
		  
		  Me.SetBackgroundColorXC(&cDFE2E200)
		  Me.TextColor = &c2E2E2E00
		  Me.Caption = "First line" + &u0A + "Second line"
		  Me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.center)
		  Me.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.WordWrap)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Open()
		  
		  Me.SetBackgroundColorXC(&cDFE2E200)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button6
	#tag Event
		Sub Open()
		  
		  Me.SetBackgroundColorXC(&cDFE2E200)
		  Me.AdjustsFontSizeToFitWidthXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button7
	#tag Event
		Sub Open()
		  
		  Me.SetBorderWidthXC(1.0)
		  Me.SetBorderColorXC(&cFF0000AA)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="LargeTitleMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackButtonTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Type="iOSImage"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
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
