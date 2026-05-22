#tag MobileContainer
Begin MobileContainer ccEdgeEffect
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 7
   Height          =   480
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   320
   Begin MobileRectangle Rectangle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Rectangle1, 3, <Parent>, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle1, 8, , 0, False, +1.00, 4, 1, 65, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c0096FF00
      Height          =   65
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   0
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileRectangle Rectangle2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle2, 8, , 0, False, +1.00, 4, 1, 65, , True
      AutoLayout      =   Rectangle2, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle2, 3, Rectangle1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle2, 7, , 0, False, +1.00, 4, 1, 100, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &cFF260000
      Height          =   65
      Left            =   220
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   0
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileRectangle Rectangle4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle4, 4, <Parent>, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle4, 1, Rectangle1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle4, 3, SegmentedButton2, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Rectangle4, 7, , 0, False, +1.00, 4, 1, 100, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c0096FF00
      Height          =   61
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   419
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileRectangle Rectangle6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle6, 4, <Parent>, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle6, 8, Rectangle4, 8, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle6, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle6, 7, , 0, False, +1.00, 4, 1, 100, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &cFF401E00
      Height          =   61
      Left            =   220
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   419
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 72, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, Rectangle1, 4, False, +1.00, 4, 1, 40, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   72
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "This screen has colored rectangles to better notice the scroll edge effects."
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   105
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   Label2, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Top Edge"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   
      Top             =   185
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileSegmentedButton SegmentedButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedButton1, 1, Label2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedButton1, 2, Label1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedButton1, 3, Label2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   SegmentedButton1, 8, , 0, True, +1.00, 4, 1, 29, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      LastSegmentIndex=   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      SegmentCount    =   0
      Segments        =   "Automatic\n\nTrue\rSoft\n\nFalse\rHard\n\nFalse\rHidden\n\nFalse"
      SelectedSegmentIndex=   0
      TintColor       =   
      Top             =   223
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin MobileLabel Label3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   Label3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label3, 1, SegmentedButton1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label3, 3, SegmentedButton1, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Label3, 7, , 0, False, +1.00, 4, 1, 100, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Bottom Edge"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   
      Top             =   302
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileSegmentedButton SegmentedButton2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   SegmentedButton2, 8, , 0, True, +1.00, 4, 1, 29, , True
      AutoLayout      =   SegmentedButton2, 1, Label3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   SegmentedButton2, 3, Label3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   SegmentedButton2, 7, SegmentedButton1, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   29
      LastSegmentIndex=   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      SegmentCount    =   0
      Segments        =   "Automatic\n\nTrue\rSoft\n\nFalse\rHard\n\nFalse\rHidden\n\nFalse"
      SelectedSegmentIndex=   0
      TintColor       =   
      Top             =   340
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
End
#tag EndMobileContainer

#tag WindowCode
	#tag Hook, Flags = &h0
		Event EdgeSelection(isTop As Boolean, type As string)
	#tag EndHook


#tag EndWindowCode

#tag Events SegmentedButton1
	#tag Event
		Sub Pressed(segmentedIndex As Integer)
		  
		  select case segmentedIndex
		    
		  case 0
		    
		    EdgeSelection(true, "automatic")
		    
		  case 1
		    
		    EdgeSelection(true, "soft")
		    
		  case 2
		    
		    EdgeSelection(true, "hard")
		    
		  case 3
		    
		    EdgeSelection(true, "hidden")
		    
		    
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SegmentedButton2
	#tag Event
		Sub Pressed(segmentedIndex As Integer)
		  
		  select case segmentedIndex
		    
		  case 0
		    
		    EdgeSelection(False, "automatic")
		    
		  case 1
		    
		    EdgeSelection(False, "soft")
		    
		  case 2
		    
		    EdgeSelection(False, "hard")
		    
		  case 3
		    
		    EdgeSelection(False, "hidden")
		    
		    
		  end select
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
