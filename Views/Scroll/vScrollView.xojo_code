#tag MobileScreen
Begin MobileScreen vScrollView
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   0
   Title           =   "ScrollView"
   Top             =   0
   Begin MobileScrollableArea Scroll1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scroll1, 8, <Parent>, 8, False, +0.30, 4, 1, 0, , True
      AutoLayout      =   Scroll1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Scroll1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Scroll1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   170
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      ScrollContent   =   1916108799
      TintColor       =   ""
      Top             =   65
      Visible         =   True
      Width           =   320
   End
   Begin MobileButton btFlashScrolls
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btFlashScrolls, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   btFlashScrolls, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btFlashScrolls, 3, Scroll1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btFlashScrolls, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Flash Scrolls"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   243
      Visible         =   True
      Width           =   100
   End
   Begin MobileScrollableArea Scroll2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Scroll2, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Scroll2, 8, <Parent>, 8, False, +0.30, 4, 1, 0, , True
      AutoLayout      =   Scroll2, 1, Scroll1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Scroll2, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   170
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      ScrollContent   =   734832639
      TintColor       =   ""
      Top             =   397
      Visible         =   True
      Width           =   320
   End
   Begin MobileButton btScrollBothToTop
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btScrollBothToTop, 1, btFlashScrolls, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btScrollBothToTop, 7, , 0, False, +1.00, 4, 2, 119, , True
      AutoLayout      =   btScrollBothToTop, 3, btFlashScrolls, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btScrollBothToTop, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Scroll both to Bottom"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   281
      Visible         =   True
      Width           =   119
   End
   Begin MobileButton btScrollTop2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btScrollTop2, 1, btScrollBothToTop, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btScrollTop2, 7, , 0, False, +1.00, 4, 2, 119, , True
      AutoLayout      =   btScrollTop2, 3, btScrollBothToTop, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btScrollTop2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Scroll second to top"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   319
      Visible         =   True
      Width           =   119
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 2, swBounce, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   Label1, 3, Scroll1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      Left            =   141
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Bounce"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   243
      Visible         =   True
      Width           =   100
   End
   Begin MobileSwitch swBounce
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   swBounce, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   swBounce, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   swBounce, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   swBounce, 7, , 0, True, +1.00, 4, 1, 51, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   249
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   ""
      Top             =   243
      Value           =   True
      Visible         =   True
      Width           =   51
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  
		  
		  Scroll1.SetBackgroundColorXC(&cF0F0F0)
		  Scroll2.SetBackgroundColorXC(&cF0F0F0)
		  
		  //Add Paging to Scroll2
		  Scroll2.SetPagingEnabledXC(True)
		  
		  //Remove scroll to top from Scroll2 when double-tapping the time indicator in status bar
		  Scroll2.SetScrollsToTopXC(False)
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events btFlashScrolls
	#tag Event
		Sub Pressed()
		  
		  Scroll1.FlashScrollIndicatorsXC
		  
		  Scroll2.FlashScrollIndicatorsXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btScrollBothToTop
	#tag Event
		Sub Pressed()
		  
		  Dim frame1, frame2 As Rect
		  
		  //We need to get the height of the current content
		  
		  frame1 = Scroll1.Container.getFrameXC
		  frame2 = Scroll2.Container.getFrameXC
		  
		  //We also need the height of the scroll itself
		  Dim scroll1Height As Integer = Scroll1.getFrameXC.Height
		  Dim scroll2Height As Integer = Scroll2.getFrameXC.Height
		  
		  //We need to calculate the difference between content height and scroll height
		  Scroll1.ScrollToXC(New Point(0, frame1.Height - scroll1Height), True)
		  Scroll2.ScrollToXC(New Point(0, frame2.Height - scroll2Height), True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btScrollTop2
	#tag Event
		Sub Pressed()
		  
		  
		  
		  
		  Scroll2.ScrollToXC(New Point(0, 0), True)
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
		Sub Opening()
		  me.SetOnTintColorXC(&c0F7FFE00)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
