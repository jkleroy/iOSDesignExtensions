#tag MobileScreen
Begin MobileScreen vButtonConfiguration
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 7
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   NavigationBarColor=   
   NavigationBarTextColor=   
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   "Button Configuration (iOS 15+)"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileScrollableArea ScrollableArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScrollableArea1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   747
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      ScrollContent   =   548665343
      TintColor       =   &c000000
      Top             =   65
      Visible         =   True
      Width           =   375
      _ClosingFired   =   False
   End
   Begin MobileButton btnScrollDown
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btnScrollDown, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      AutoLayout      =   btnScrollDown, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btnScrollDown, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   btnScrollDown, 7, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "⌄"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   325
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   762
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events ScrollableArea1
	#tag Event
		Sub Opening()
		  
		  Dim content As MobileUIControl = me.Container
		  
		  //Center the cc
		  Dim cons As iOSLayoutConstraint
		  cons = new iOSLayoutConstraint(content, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  me, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  1.0, 0)
		  cons.Active = True
		  me.AddConstraint(cons)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Scrolled(x As Integer, y As Integer)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnScrollDown
	#tag Event
		Sub Opening()
		  me.Caption = ""
		  me.SetImageXC(Picture.SystemImage("chevron.down", 0))
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  
		  Dim pt As Point = ScrollableArea1.ScrollPositionXC
		  
		  pt = new Point(pt.X, pt.Y+100)
		  
		  ScrollableArea1.ScrollToXC(pt)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mTabBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarTextColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
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
