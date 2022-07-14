#tag MobileScreen
Begin MobileScreen vImageExtensions
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
   TintColor       =   &c00000000
   Title           =   "ImageExtensions"
   Top             =   0
   Begin MobileImageViewer imgDefault
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   imgDefault, 8, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   imgDefault, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   imgDefault, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   imgDefault, 7, , 0, False, +1.00, 4, 1, 50, , True
      ControlCount    =   0
      DisplayMode     =   3
      Enabled         =   True
      Height          =   50
      Image           =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   50
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 1, imgDefault, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 10, imgDefault, 10, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   78
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Default Picture"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   83
      Visible         =   True
      Width           =   222
   End
   Begin MobileImageViewer imgOriginal
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   imgOriginal, 1, imgDefault, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   imgOriginal, 7, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   imgOriginal, 3, imgDefault, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   imgOriginal, 8, , 0, False, +1.00, 4, 1, 50, , True
      ControlCount    =   0
      DisplayMode     =   3
      Enabled         =   True
      Height          =   50
      Image           =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   131
      Visible         =   True
      Width           =   50
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 8, imgOriginal, 8, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Label2, 1, imgOriginal, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Label2, 10, imgOriginal, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 222, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   70
      Left            =   78
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Force original Picture.\nUse this for MobileToolbarButton so it isn't recolored."
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   121
      Visible         =   True
      Width           =   222
   End
   Begin MobileImageViewer imgColored
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   imgColored, 1, imgOriginal, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   imgColored, 7, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   imgColored, 3, imgOriginal, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   imgColored, 8, , 0, False, +1.00, 4, 1, 50, , True
      ControlCount    =   0
      DisplayMode     =   3
      Enabled         =   True
      Height          =   50
      Image           =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   189
      Visible         =   True
      Width           =   50
   End
   Begin MobileImageViewer imgRTL
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   imgRTL, 1, imgColored, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   imgRTL, 7, , 0, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   imgRTL, 3, imgColored, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   imgRTL, 8, , 0, False, +1.00, 4, 1, 50, , True
      ControlCount    =   0
      DisplayMode     =   3
      Enabled         =   True
      Height          =   50
      Image           =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   247
      Visible         =   True
      Width           =   50
   End
   Begin MobileLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label3, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 10, imgColored, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 4, 1, 222, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   78
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Colored Picture"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   199
      Visible         =   True
      Width           =   222
   End
   Begin MobileLabel Label4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label4, 8, imgRTL, 8, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Label4, 1, Label3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label4, 10, imgRTL, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label4, 7, , 0, False, +1.00, 4, 1, 222, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   70
      Left            =   78
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Right-To-Left image.\nOn right-to-left systems (Arabic & Hebrew) the image will be mirrored."
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   237
      Visible         =   True
      Width           =   222
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events imgDefault
	#tag Event
		Sub Opening()
		  me.Image = ic8_netflix
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events imgOriginal
	#tag Event
		Sub Opening()
		  
		  Dim image As Picture = ic8_netflix
		  
		  image = ImageExtensionsXC.ImageOriginalXC(image)
		  
		  me.Image = image
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events imgColored
	#tag Event
		Sub Opening()
		  
		  
		  me.Image = ImageExtensionsXC.ImageWithColorXC(ic8_netflix, &cFF0000)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events imgRTL
	#tag Event
		Sub Opening()
		  
		  
		  me.Image = ImageExtensionsXC.ImageForRTLXC(ic8_netflix)
		  
		  
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
#tag EndViewBehavior
