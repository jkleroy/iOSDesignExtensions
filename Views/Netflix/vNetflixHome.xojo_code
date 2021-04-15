#tag MobileScreen
Begin MobileScreen vNetflixHome
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   0
   Title           =   "Netflix"
   Top             =   0
   Begin iOSScrollableArea ScrollableArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScrollableArea1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   ScrollableArea1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      Height          =   503.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      ScrollContent   =   134291455
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
   Begin MobileToolbarButton tbChromecast
      Caption         =   ""
      Enabled         =   True
      Height          =   22
      Icon            =   1243428863
      Left            =   304
      LockedInPosition=   False
      Scope           =   2
      Top             =   32
      Type            =   1001
      Width           =   22.0
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  //Set the navigation color
		  Self.SetNavBarColorXC(NetflixSettings.NavColor, NetflixSettings.IconColor, NetflixSettings.IconColor, False, True)
		  
		  self.SetStatusBarStyleXC(AppExtensionsXC.UIStatusBarStyle.LightContent)
		  
		  //Remove large titles
		  Self.SetLargeTitlesXC(False)
		  
		  //Hide the 1px gray shadow
		  Self.HideNavBarShadowXC
		  
		  Self.SetHideNavBarOnSwipeXC(True)
		  
		  //TabBar colors
		  Self.SetTabBarColorXC(NetflixSettings.NavColor)
		  Self.SetTabBarButtonColorXC(NetflixSettings.IconColor)
		  
		  self.SetTabBarBadgeXC(1, "2")
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  //Set the view background color
		  Self.SetBackgroundColorXC(NetflixSettings.BackColor)
		  
		  Dim tb As MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.Done, "Exit")
		  Self.LeftNavigationToolbar.AddButton tb
		  
		  tbChromecast.Enabled = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  #Pragma Unused button
		  
		  If Self.ParentSplitView.Available Then
		    Dim scr As New iPadLayout
		    app.CurrentLayout.Content =  scr.Content
		    
		  Else
		    Dim scr As New iPhoneLayout
		    App.CurrentLayout.Content = scr.Content
		    
		  End If
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
