#tag IOSView
Begin iosView vSelect
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   ""
   Top             =   0
   Begin iOSLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Label1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Label1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 300, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   10
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Select an example from the list on the left"
      TextAlignment   =   "1"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   225
      Visible         =   True
      Width           =   300.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  Dim tb As iOSToolButton = iOSToolButton.NewPlain("FullScreen")
		  tb.Tag = "fullscreen"
		  self.RightNavigationToolbar.Add tb
		  
		  
		  tb = iOSToolButton.NewPlain("List")
		  tb.Tag = "menu"
		  self.LeftNavigationToolbar.Add tb
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  
		  Select case button.Tag
		    
		  Case "fullscreen"
		    if app.currentSplitMode = ViewExtensionsXC.UISplitViewControllerDisplayMode.PrimaryHidden then
		      Self.ParentSplitView.setDisplayMode(ViewExtensionsXC.UISplitViewControllerDisplayMode.Automatic)
		      app.currentSplitMode = ViewExtensionsXC.UISplitViewControllerDisplayMode.Automatic
		    Else
		      Self.ParentSplitView.setDisplayMode(ViewExtensionsXC.UISplitViewControllerDisplayMode.PrimaryHidden)
		      app.currentSplitMode = ViewExtensionsXC.UISplitViewControllerDisplayMode.PrimaryHidden
		    end if
		    
		  Case "menu"
		    Self.ParentSplitView.setDisplayMode(ViewExtensionsXC.UISplitViewControllerDisplayMode.PrimaryOverlay)
		    
		  End Select
		End Sub
	#tag EndEvent


#tag EndWindowCode

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
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
