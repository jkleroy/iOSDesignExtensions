#tag IOSView
Begin iosView vScrollView
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "ScrollView"
   Top             =   0
   Begin iOSScrollableArea Scroll1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scroll1, 8, <Parent>, 8, False, +0.30, 4, 1, 0, , True
      AutoLayout      =   Scroll1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Scroll1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Scroll1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      Height          =   144.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      ScrollContent   =   1916108799
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button1, 3, Scroll1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Flash Scrolls"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   217
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSScrollableArea Scroll2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scroll2, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Scroll2, 8, <Parent>, 8, False, +0.30, 4, 1, 0, , True
      AutoLayout      =   Scroll2, 1, Scroll1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Scroll2, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      Height          =   144.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      ScrollContent   =   734832639
      Top             =   336
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 2, 119, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Scroll both to Bottom"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   255
      Visible         =   True
      Width           =   119.0
   End
   Begin iOSButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, Button2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 2, 119, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Scroll second to top"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   293
      Visible         =   True
      Width           =   119.0
   End
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 2, swBounce, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   Label1, 3, Scroll1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   141
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Bounce"
      TextAlignment   =   "2"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   217
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSSwitch swBounce
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swBounce, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   swBounce, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   swBounce, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swBounce, 7, , 0, True, +1.00, 4, 1, 51, , True
      Enabled         =   True
      Height          =   31.0
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      Top             =   217
      Value           =   True
      Visible         =   True
      Width           =   51.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  
		  
		  Scroll1.SetBackgroundColorXC(&cF0F0F0)
		  Scroll2.SetBackgroundColorXC(&cF0F0F0)
		  
		  //Add Paging to Scroll2
		  Scroll2.SetPagingEnabledXC(True)
		  
		  //Remove scroll to top from Scroll2 when double-tapping the time indicator in status bar
		  Scroll2.SetScrollsToTopXC(False)
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  
		  Scroll1.FlashScrollIndicatorsXC
		  
		  Scroll2.FlashScrollIndicatorsXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Action()
		  
		  Dim frame1, frame2 As Xojo.Core.Rect
		  
		  //We need to get the height of the current content
		  
		  frame1 = Scroll1.Content.getFrameXC
		  frame2 = Scroll2.Content.getFrameXC
		  
		  //We also need the height of the scroll itself
		  Dim scroll1Height As Integer = Scroll1.getFrameXC.Height
		  Dim scroll2Height As Integer = Scroll2.getFrameXC.Height
		  
		  //We need to calculate the difference between content height and scroll height
		  Scroll1.ScrollToXC(New Xojo.Core.Point(0, frame1.Height - scroll1Height), True)
		  Scroll2.ScrollToXC(New Xojo.Core.Point(0, frame2.Height - scroll2Height), True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Action()
		  
		  
		  
		  
		  Scroll2.ScrollToXC(New Xojo.Core.Point(0, 0), True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events swBounce
	#tag Event
		Sub ValueChanged()
		  Scroll1.SetBouncesXC(Me.Value)
		  Scroll2.SetBouncesXC(me.Value)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SetOnTintColorXC(&c0F7FFE00)
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
