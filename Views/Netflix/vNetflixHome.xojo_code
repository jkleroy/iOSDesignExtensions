#tag IOSView
Begin iosView vNetflixHome
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Netflix"
   Top             =   0
   Begin iOSScrollableArea ScrollableArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ScrollableArea1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   ScrollableArea1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ScrollableArea1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      Height          =   415.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      ScrollContent   =   134291455
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSToolButton tbChromecast
      Caption         =   ""
      Enabled         =   True
      Height          =   22
      Image           =   "1243428863"
      Image           =   "1243428863"
      Left            =   290
      LockedInPosition=   False
      Scope           =   2
      Top             =   32
      Type            =   "1001"
      Width           =   22.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  //Set the navigation color
		  Self.SetNavBarColorXC(NetflixSettings.NavColor, NetflixSettings.IconColor, False, True)
		  
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
		Sub Open()
		  //Set the view background color
		  Self.SetBackgroundColorXC(NetflixSettings.BackColor)
		  
		  Dim tb As iOSToolButton = iOSToolButton.NewPlain("Exit")
		  Self.LeftNavigationToolbar.Add tb
		  
		  tbChromecast.Enabled = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  
		  app.CurrentScreen.Content = new vHome
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag ViewBehavior
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
