#tag MobileScreen
Begin MobileScreen vNetflixMore
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   ""
   Title           =   ""
   Top             =   0
   Begin iOSMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 87, , True
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      EditingEnabled  =   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   0
      Height          =   416
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionCount    =   0
      TintColor       =   ""
      Top             =   152
      Visible         =   True
      Width           =   320
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 4, Table1, 3, False, +1.00, 4, 1, -*kStdControlGapV, , True
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 2, 100, , True
      Caption         =   "Manage Profiles"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   110
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   114
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  //Set the navigation color
		  Self.SetNavBarColorXC(NetflixSettings.NavColor, NetflixSettings.IconColor, NetflixSettings.IconColor, False, True)
		  'Self.setNavBarTransparent
		  
		  //Remove large titles
		  Self.SetLargeTitlesXC(False)
		  
		  //Hide the 1px gray shadow
		  Self.HideNavBarShadowXC
		  
		  //TabBar colors
		  Self.SetTabBarColorXC(NetflixSettings.NavColor)
		  Self.SetTabBarButtonColorXC(NetflixSettings.IconColor)
		  
		  self.SetTabBarBadgeXC(1, "2")
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  //Set the view background color
		  Self.SetBackgroundColorXC(NetflixSettings.NavColor)
		  
		  
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  
		  //Hide separators
		  Me.SetSeparatorStyleXC(TableExtensionsXC.separatorStyle.none)
		  
		  Me.setBackgroundColorXC(NetflixSettings.BackColor)
		  
		  
		  //Setup the table content
		  Me.AddSection("")
		  
		  Dim cell As MobileTableCellData
		  
		  
		  cell = Me.CreateCell("Notifications", "", ImageExtensionsXC.ImageWithColorXC(ic8_notification, NetflixSettings.CellTextColor), MobileTableCellData.AccessoryTypes.Disclosure)
		  cell.SetBackgroundColorXC(&c000000FF)
		  cell.SetTextColorXC(NetflixSettings.CellTextColor)
		  cell.SetSelectedBackgroundColorXC(&c000000FF)
		  cell.SetSelectedTextColorXC(NetflixSettings.CellSelectedTextColor)
		  Me.AddRow(0, cell)
		  
		  
		  cell = Me.CreateCell("My List", "", Nil, MobileTableCellData.AccessoryTypes.Disclosure)
		  cell.SetBackgroundColorXC(&c000000FF)
		  cell.SetTextColorXC(NetflixSettings.CellTextColor)
		  cell.SetSelectedBackgroundColorXC(&c000000FF)
		  cell.SetSelectedTextColorXC(NetflixSettings.CellSelectedTextColor)
		  Me.AddRow(0, cell)
		  
		  
		  cell = Me.CreateCell("Application settings")
		  cell.SetBackgroundColorXC(&c000000FF)
		  cell.SetTextColorXC(NetflixSettings.CellTextColor)
		  cell.SetSelectedBackgroundColorXC(&c000000FF)
		  cell.SetSelectedTextColorXC(NetflixSettings.CellSelectedTextColor)
		  Me.AddRow(0, cell)
		  
		  cell = Me.CreateCell("Account")
		  cell.SetBackgroundColorXC(&c000000FF)
		  cell.SetTextColorXC(NetflixSettings.CellTextColor)
		  cell.SetSelectedBackgroundColorXC(&c000000FF)
		  cell.SetSelectedTextColorXC(NetflixSettings.CellSelectedTextColor)
		  Me.AddRow(0, cell)
		  
		  cell = Me.CreateCell("Help")
		  cell.SetBackgroundColorXC(&c000000FF)
		  cell.SetTextColorXC(NetflixSettings.CellTextColor)
		  cell.SetSelectedBackgroundColorXC(&c000000FF)
		  cell.SetSelectedTextColorXC(NetflixSettings.CellSelectedTextColor)
		  Me.AddRow(0, cell)
		  
		  cell = Me.CreateCell("Version : 10.0.0")
		  cell.SetBackgroundColorXC(NetflixSettings.CellColor)
		  cell.SetTextColorXC(&c555555)
		  //Row can't be selected
		  cell.SetSelectionStyleXC(TableExtensionsXC.selectionStyle.none)
		  Me.AddRow(0, cell)
		  
		  //Hide remaining separators
		  Me.SetHideRemainingSeparatorsXC
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(section As Integer, row As Integer)
		  #Pragma Unused section
		  #Pragma Unused row
		  
		  me.UnselectTableRowXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Opening()
		  
		  Me.CaptionColor = NetflixSettings.ButtonColor
		  Me.TintColor = NetflixSettings.ButtonColor
		  Me.SetImageXC(ic_edit)
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets
		  insets.Left = 8
		  insets.Right = 8
		  Me.SetTitleEdgeInsetsXC(insets)
		  
		  me.AdjustsFontSizeToFitWidthXC
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
