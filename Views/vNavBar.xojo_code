#tag MobileScreen
Begin MobileScreen vNavBar
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   0
   Title           =   "Navigation Bar Color"
   Top             =   0
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 4, 1, 175, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 200, , True
      Caption         =   "Use Picture (SF Symbol)"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   60
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   175
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 200, , True
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 4, 1, 240, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Use Picture (from resources)"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   60
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   240
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button3, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Button3, 3, <Parent>, 3, False, +1.00, 4, 1, 302, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Change Title Color"
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
      Top             =   302
      Visible         =   True
      Width           =   280
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 1, Button3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 2, Button3, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Change BackButton Color"
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
      Top             =   340
      Visible         =   True
      Width           =   280
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  
		  Self.SetNavBarColorXC(&c073F8000, &cFFFFFF, &cFFFFFF, False, True)
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  
		  Dim img As Picture = Picture.SystemImage("tv.fill", 20)
		  
		  self.SetNavBarTitleImageXC(img)
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  
		  Dim img As Picture = ic8_home
		  
		  //Forces the image to be used "as template"
		  img = ImageExtensionsXC.ImageWithMaskXC(img)
		  
		  self.SetNavBarTitleImageXC(img)
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Pressed()
		  
		  self.SetNavBarTitleColorXC(&cFF0000)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Pressed()
		  
		  self.SetNavBarTintColorXC(&cFF0000)
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
