#tag MobileScreen
Begin MobileScreen vSearchBar
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
   Title           =   "SearchBar options"
   Top             =   0
   _mTabBarVisible =   False
   Begin iOSMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   True
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      BackgroundColor =   
      ControlCount    =   0
      EditingEnabled  =   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   0
      Height          =   503
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionBackgroundColor=   
      SectionCount    =   0
      SectionTextColor=   
      SelectedRowColor=   
      TintColor       =   
      Top             =   65
      Visible         =   True
      Width           =   320
      _ClosingFired   =   False
      _OpeningCompleted=   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  self.SetPreferredSearchBarPlacementXC(TableSearchExtensionsXC.SearchBarPlacement.Stacked)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  
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

#tag Events Table1
	#tag Event
		Sub Opening()
		  
		  Dim section as Integer = me.AddSection("Placement (iOS 16+)")
		  
		  
		  Dim cell As MobileTableCellData = me.CreateCell("Automatic", "Default")
		  cell.Tag = "placement automatic"
		  me.AddRow(section, cell)
		  
		  cell = me.CreateCell("Integrated")
		  cell.Tag = "placement integrated"
		  me.AddRow(section, cell)
		  
		  cell = me.CreateCell("Stacked", "iOS 26")
		  cell.Tag = "placement stacked"
		  me.AddRow(section, cell)
		  
		  cell = me.CreateCell("IntegratedCentered", "iOS 26+, iPad only")
		  cell.Tag = "placement IntegratedCentered"
		  me.AddRow(section, cell)
		  
		  cell = me.CreateCell("IntegratedButton", "iOS 26+")
		  cell.Tag = "placement IntegratedButton"
		  me.AddRow(section, cell)
		  
		  
		  
		  
		  //////////////
		  // Title
		  section = me.AddSection("Behavior")
		  
		  
		  cell = me.CreateCell("Hide when scrolling", "", nil, MobileTableCellData.AccessoryTypes.Checkmark)
		  cell.Tag = "hide scroll"
		  me.AddRow(section, cell)
		  
		  
		  section = me.AddSection(" ")
		  
		  for i as Integer = 0 to 9
		    me.AddRow(section, "Empty row for scrolling")
		  next
		  
		  Return
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(section As Integer, row As Integer)
		  
		  Dim tag As String = me.RowCellData(section, row).Tag
		  
		  if tag.IsEmpty then Return
		  
		  Select case tag
		    
		  Case "placement automatic"
		    
		    Dim placement as TableSearchExtensionsXC.SearchBarPlacement = _
		    TableSearchExtensionsXC.SearchBarPlacement.Automatic
		    
		    Dim v As new vSearchBarExample(placement)
		    v.ShowModal(self)
		    
		    
		  Case "placement integrated"
		    
		    Dim placement as TableSearchExtensionsXC.SearchBarPlacement = _
		    TableSearchExtensionsXC.SearchBarPlacement.Integrated
		    
		    Dim v As new vSearchBarExample(placement)
		    v.ShowModal(self)
		    
		  Case "placement stacked"
		    
		    Dim placement as TableSearchExtensionsXC.SearchBarPlacement = _
		    TableSearchExtensionsXC.SearchBarPlacement.Stacked
		    
		    Dim v As new vSearchBarExample(placement)
		    v.ShowModal(self)
		    
		  Case "placement IntegratedCentered"
		    
		    Dim placement as TableSearchExtensionsXC.SearchBarPlacement = _
		    TableSearchExtensionsXC.SearchBarPlacement.IntegratedCentered
		    
		    Dim v As new vSearchBarExample(placement)
		    v.ShowModal(self)
		    
		  Case "placement IntegratedCentered"
		    
		    Dim placement as TableSearchExtensionsXC.SearchBarPlacement = _
		    TableSearchExtensionsXC.SearchBarPlacement.IntegratedButton
		    
		    Dim v As new vSearchBarExample(placement)
		    v.ShowModal(self)
		    
		  Case "hide scroll"
		    
		    Dim cell As MobileTableCellData = me.RowCellData(section, row)
		    Dim value As Boolean = _
		    (cell.AccessoryType = MobileTableCellData.AccessoryTypes.Checkmark)
		    
		    value = not value
		    
		    self.SetHidesSearchBarWhenScrollingXC(value)
		    
		    if value then
		      cell.AccessoryType = MobileTableCellData.AccessoryTypes.Checkmark
		    else
		      cell.AccessoryType = MobileTableCellData.AccessoryTypes.None
		    end if
		    
		    
		    
		    
		  Else
		    Break //forgot to implement
		  End Select
		  
		  me.ReloadRow(section, row)
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
