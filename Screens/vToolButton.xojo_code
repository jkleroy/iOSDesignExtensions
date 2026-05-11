#tag MobileScreen
Begin MobileScreen vToolButton
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   NavigationBarColor=   
   NavigationBarTextColor=   
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   0
   Title           =   "ToolButtons"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Setup Toolbar buttons"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   165
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button2, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 224, , True
      AutoLayout      =   Button2, 3, <Parent>, 3, False, +1.00, 4, 1, 393, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Remove Toolbar buttons"
      CaptionColor    =   &cFF4A5C00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   393
      Visible         =   True
      Width           =   224
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button3, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Button3, 2, Button1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Setup Toolbar buttons with space"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   203
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button4, 1, Button3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 2, Button3, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Setup Toolbar buttons with space and grouped"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   241
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin MobileButton Button5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button5, 1, Button4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button5, 7, , 0, False, +1.00, 4, 1, 280, , True
      AutoLayout      =   Button5, 3, Button4, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button5, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Search in toolbar"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   279
      Visible         =   True
      Width           =   280
      _ClosingFired   =   False
   End
   Begin iOSMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   True
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table1, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      BackgroundColor =   
      ControlCount    =   0
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   0
      Height          =   137
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionBackgroundColor=   
      SectionCount    =   0
      SectionTextColor=   
      SelectedRowColor=   
      TintColor       =   
      Top             =   431
      Visible         =   True
      Width           =   320
      _ClosingFired   =   False
      _OpeningCompleted=   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  Dim tb As MobileToolbarButton
		  
		  tb = new MobileToolbarButton(MobileToolbarButton.Types.Plain, "Red")
		  tb.SetTintColorXC(&cFF0000)
		  Self.RightNavigationToolbar.AddButton tb
		  
		  tb = new MobileToolbarButton(MobileToolbarButton.Types.Pause)
		  tb.SetTintColorXC(&c0000FF)
		  Self.RightNavigationToolbar.AddButton tb
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetupToolbuttons(withSpace As Boolean = False, hideShared As Boolean = True)
		  
		  self.Toolbar.RemoveAllButtons
		  
		  // Builds the toolbar.
		  
		  
		  
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("location", 0))
		  if withSpace then
		    var flexibleSpace as MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    flexibleSpace.SetHidesSharedBackgroundXC(hideShared)
		    
		    self.Toolbar.AddButton flexibleSpace
		    
		  end if
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("number", 0))
		  if withSpace then
		    var flexibleSpace as MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    flexibleSpace.SetHidesSharedBackgroundXC(hideShared)
		    
		    self.Toolbar.AddButton flexibleSpace
		    
		  end if
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("camera", 0))
		  if withSpace then
		    var flexibleSpace as MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    flexibleSpace.SetHidesSharedBackgroundXC(hideShared)
		    
		    self.Toolbar.AddButton flexibleSpace
		    
		  end if
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("trash", 0))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetupToolbuttonsAndSearch()
		  
		  self.Toolbar.RemoveAllButtons
		  
		  // Builds the toolbar.
		  
		  
		  
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("location", 0))
		  
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("number", 0))
		  
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("camera", 0))
		  
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("trash", 0))
		  
		  
		  
		  
		  //Getting the search button
		  Dim searchButton As MobileToolbarButton = self.GetSearchBarPlacementBarButtonItemXC
		  
		  if searchButton <> nil then
		    
		    //Adding some space
		    self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    self.Toolbar.AddButton searchButton
		  end if
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  
		  SetupToolbuttons(False)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.left)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  self.Toolbar.RemoveAllButtons
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.left)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Pressed()
		  
		  SetupToolbuttons(True)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.left)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Pressed()
		  
		  SetupToolbuttons(True, False)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.left)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button5
	#tag Event
		Sub Pressed()
		  
		  SetupToolbuttonsAndSearch()
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.left)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Table1
	#tag Event
		Sub Opening()
		  me.AddRow("Empty table to activate")
		  me.AddRow("the search controller")
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
