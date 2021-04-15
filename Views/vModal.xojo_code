#tag MobileScreen
Begin MobileScreen vModal
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   0
   Title           =   "Modal View"
   Top             =   0
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 80, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Apple recommends to place the ""Done""/""Close"" button on the right if there isn't any other Toolbutton. If there is another toolbutton, place the ""Done"" button on the left."
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   80
      Visible         =   True
      Width           =   280
   End
   Begin MobileLabel Label2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label2, 8, , 0, False, +1.00, 4, 2, 30, , True
      AutoLayout      =   Label2, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label2, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Label2, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Calling self.Close on a modal view has no effect. You must use self.DismissViewControllerXC"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   118
      Visible         =   True
      Width           =   280
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  Dim tb As new MobileToolbarButton(MobileToolbarButton.Types.Done)
		  tb.Tag = "Done"
		  self.RightNavigationToolbar.AddButton tb
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  #Pragma Unused button
		  
		  'self.Close
		  
		  self.DismissViewControllerXC
		End Sub
	#tag EndEvent


#tag EndWindowCode

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
