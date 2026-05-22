#tag MobileScreen
Begin MobileScreen vButtonState
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   0
   Left            =   0
   NavigationBarColor=   
   NavigationBarTextColor=   
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Buttons"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileButton btTest
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btTest, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btTest, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   btTest, 3, btClick, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   btTest, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "One"
      CaptionColor    =   &c000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   153
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin MobileButton btTest1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btTest1, 1, btTest, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btTest1, 7, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   btTest1, 11, btTest, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btTest1, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Two"
      CaptionColor    =   &c000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   58
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   153
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin MobileButton btClick
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btClick, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btClick, 1, btTest, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btClick, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btClick, 7, , 0, False, +1.00, 4, 2, 100, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Click me to change state"
      CaptionColor    =   &c000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton btTest2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btTest2, 11, btTest, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btTest2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btTest2, 1, btTest1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btTest2, 7, , 0, False, +1.00, 4, 2, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Three"
      CaptionColor    =   &c000000
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   96
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   153
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, btClick, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 3, btTest2, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 2, 150, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Get selected button"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   233
      Visible         =   True
      Width           =   150
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub UnSelectOthers(caller As MobileButton)
		  
		  Dim buttons() as MobileButton = Array(btTest, btTest1, btTest2)
		  
		  For each bt as MobileButton in Buttons
		    
		    if bt <> caller then
		      
		      bt.SetSelectedXC(False)
		      
		    end if
		  Next
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events btTest
	#tag Event
		Sub Opening()
		  
		  Me.SetChangesSelectionAsPrimaryActionXC(True)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  
		  //unselect the other buttons
		  UnSelectOthers(me)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btTest1
	#tag Event
		Sub Opening()
		  
		  Me.SetChangesSelectionAsPrimaryActionXC(True)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  
		  //unselect the other buttons
		  UnSelectOthers(me)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btClick
	#tag Event
		Sub Opening()
		  
		  Me.SetChangesSelectionAsPrimaryActionXC(True)
		  me.TintColor = &c00D3FF00
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btTest2
	#tag Event
		Sub Opening()
		  
		  Me.SetChangesSelectionAsPrimaryActionXC(True)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  
		  //unselect the other buttons
		  UnSelectOthers(me)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Pressed()
		  
		  if btTest.IsSelectedXC then
		    MessageBox("One is selected")
		  elseif btTest1.IsSelectedXC then
		    MessageBox("Two is selected")
		  elseif btTest2.IsSelectedXC then
		    MessageBox("Three is selected")
		  else
		    MessageBox("No button is selected")
		  end if
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
