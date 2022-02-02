#tag MobileScreen
Begin MobileScreen vTable Implements iOSMobileTableDataSource,iOSMobileTableDataSourceEditing
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Table"
   Top             =   0
   Begin iOSMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      EditingEnabled  =   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   1
      Height          =   503
      Left            =   0
      LockedInPosition=   True
      Scope           =   0
      SectionCount    =   0
      TintColor       =   &c000000
      Top             =   65
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddRow(section As Integer, title As Text, detail As Text, Accessory As MobileTableCellData.AccessoryTypes, tag As Auto, image As iOSImage = nil)
		  
		  'section As Integer, Text As Text, detail As Text, Accessory As MobileTableCellData.AccessoryTypes = MobileTableCellData.AccessoryTypes.Disclosure, tag As Auto, image As iOSImage = Nil
		  
		  dim nd As new Dictionary
		  nd.Value("text") = title
		  nd.Value("detail") = detail
		  nd.Value("accessory") = Accessory
		  nd.Value("image") = image
		  nd.Value("tag") = tag
		  
		  
		  Dim rows() As Dictionary
		  
		  if sections(section).HasKey("rows") then
		    rows = sections(section).Value("rows")
		    rows.Append nd
		    
		  else
		    rows.Append nd
		    sections(section).Value("rows") = rows
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddSection(title As String, tag As Auto = nil)
		  
		  Dim d As new Dictionary
		  d.Value("title") = title
		  d.Value("tag") = tag
		  d.Value("collapsed") = False
		  
		  
		  sections.Append d
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddSection(title As text, tag As Auto = nil) As Integer
		  
		  AddSection(title, tag)
		  
		  Return Sections.LastIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AllowRowEditing(table As iOSMobileTable, section As Integer, row As Integer) As Boolean
		  
		  
		  
		  Select Case Me.RowData(table, section, row).Tag
		    
		  Case "slide"
		    
		    Return True
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount(table as iOSMobileTable, section As Integer) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  
		  If section = -1 Or section > sections.LastIndex Then
		    Return 0
		  End If
		  
		  Dim sectionDic As Dictionary = sections(section)
		  
		  
		  If sectionDic.HasKey("rows") Then
		    
		    
		    Dim rows() As Dictionary = sections(section).Value("rows")
		    
		    
		    Return rows.LastIndex + 1
		    
		    
		  End If
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Dim cell As MobileTableCellData
		  Dim rows() As Dictionary = sections(section).Value("rows")
		  
		  
		  Dim nd As Dictionary = rows(row)
		  
		  #if XojoVersion >= 2021.02
		    cell = table.CreateCell("")
		    
		  #else
		    // See feedback://showreport?report_id=64547
		    cell = table.CreateCustomCell(GetTypeInfo(cellGeneric))
		    
		  #endif
		  
		  
		  
		  cell.Text = nd.Value("text")
		  cell.DetailText = nd.Value("detail")
		  cell.Image = nd.Lookup("image", Nil)
		  cell.AccessoryType = nd.Value("accessory")
		  cell.Tag = nd.Value("tag")
		  
		  Select Case cell.Tag
		    
		  Case "font"
		    cell.SetFontsXC("AcademyEngravedLetPlain", 18)
		    
		    
		  Case "cellcolor"
		    cell.SetBackgroundColorXC(&c6CFF8200)
		    
		    
		  Case "noselect"
		    cell.SetSelectionStyleXC(TableExtensionsXC.selectionStyle.none)
		    
		  Case "wrap"
		    cell.SetTableCellBreakXC(ControlExtensionsXC.NSLineBreakMode.WordWrap)
		    
		  Case "textcolor"
		    cell.SetTextColorXC(&cFF0000)
		    
		  Case "detailcolor"
		    cell.SetDetailTextColorXC(&cFF0000)
		    
		  Case "selectedColor"
		    cell.SetSelectedTextColorXC(&cFF0000)
		    
		  End Select
		  
		  
		  Return cell
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RowEditingCompleted(table As iOSMobileTable, section As Integer, row As Integer, action As iOSMobileTable.RowEditingStyles)
		  // Part of the iOSMobileTableDataSourceEditing interface.
		  
		  #Pragma Unused table
		  #Pragma Unused section
		  
		  #Pragma Unused row
		  #Pragma Unused action
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowIsEditable(table As iOSMobileTable, section As Integer, row As Integer) As Boolean
		  // Part of the iOSMobileTableDataSourceEditing interface.
		  
		  Select Case Me.RowData(table, section, row).Tag
		    
		  Case "slide"
		    
		    Return True
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionCount(table as iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  #Pragma Unused table
		  
		  Return sections.LastIndex+1
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  
		  Return sections(section).Value("title")
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected sections() As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  
		  me.SetSectionHeaderTopPaddingXC(10)
		  
		  Dim section As Integer
		  
		  section = Self.AddSection("Custom Action Button")
		  Self.AddRow(section, "Slide me to the left", "", MobileTableCellData.AccessoryTypes.None, "slide")
		  #if False
		    
		    Self.AddRow(section, "Slide me to the left", "", MobileTableCellData.AccessoryTypes.None, "slide")
		    
		  #endif
		  
		  section = Self.AddSection("Table Style")
		  Self.AddRow(section, "Cell font", "", MobileTableCellData.AccessoryTypes.None, "font")
		  Self.AddRow(section, "Cell color", "", MobileTableCellData.AccessoryTypes.None, "cellcolor")
		  Self.AddRow(section, "Cell text color", "", MobileTableCellData.AccessoryTypes.None, "textcolor")
		  Self.AddRow(section, "Cell detail color", "Detail text", MobileTableCellData.AccessoryTypes.None, "detailcolor")
		  Self.AddRow(section, "Cell selected color", "", MobileTableCellData.AccessoryTypes.None, "selectedcolor")
		  Self.AddRow(section, "This is wrapped text that will appear on two lines", "", MobileTableCellData.AccessoryTypes.None, "wrap")
		  Self.AddRow(section, "No selection", "", MobileTableCellData.AccessoryTypes.None, "noselect")
		  
		  
		  section = Self.AddSection("Table Options")
		  Self.AddRow(section, "Allow Selection", "", MobileTableCellData.AccessoryTypes.Checkmark, "selection")
		  
		  
		  Self.AddRow(section, "Enable Bounce", "", MobileTableCellData.AccessoryTypes.Checkmark, "bounce")
		  Self.AddRow(section, "Enable Scroll", "", MobileTableCellData.AccessoryTypes.Checkmark, "scroll")
		  Self.AddRow(section, "Show Scrollbar", "", MobileTableCellData.AccessoryTypes.Checkmark, "showscrollbar")
		  Self.AddRow(section, "Hide Separators", "", MobileTableCellData.AccessoryTypes.none, "separators")
		  Self.AddRow(section, "Separator Color", "", MobileTableCellData.AccessoryTypes.none, "SeparatorColor")
		  Self.AddRow(section, "Hide Remaining Separators", "", MobileTableCellData.AccessoryTypes.none, "remaining")
		  
		  
		  
		  section = Self.AddSection("Other")
		  Self.AddRow(section, "Flash scroll indicators", "", MobileTableCellData.AccessoryTypes.none, "flash")
		  Self.AddRow(section, "Get ScrollPosition", "", MobileTableCellData.AccessoryTypes.none, "scrollposition")
		  
		  Me.DataSource = Self
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ApplyActionsForRow(section As Integer, row As Integer) As iOSMobileTableRowAction()
		  
		  Dim cell As MobileTableCellData = Me.RowCellData(section, row)
		  
		  If cell.Tag = Nil Then
		    Return Nil
		  End If
		  
		  Dim actions() As iOSMobileTableRowAction
		  
		  Select Case cell.Tag
		    
		  Case "slide"
		    
		    Dim action As iOSMobileTableRowAction
		    action = New iOSMobileTableRowAction(iOSMobileTableRowAction.Styles.Normal, "First", Nil)
		    action.SetBackgroundColorXC(&cFF8D0000)
		    actions.Append action
		    
		    action = New iOSMobileTableRowAction(iOSMobileTableRowAction.Styles.Normal, "Second", Nil)
		    action.SetBackgroundColorXC(&c68B1FF00)
		    actions.Append action
		    
		    //Creating a row action with no text
		    'Dim action As iOSMobileTableRowAction
		    'action = New iOSMobileTableRowAction(iOSMobileTableRowAction.Styles.Normal, "", Nil)
		    'action.SetIconXC(ic8_camera, &c21FE8000)
		    
		    'actions.Append action
		    Return actions
		    
		    
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(section As Integer, row As Integer)
		  
		  Dim cell As MobileTableCellData = Me.RowCellData(section, row)
		  
		  Dim value As Boolean
		  If cell.AccessoryType = MobileTableCellData.AccessoryTypes.None Then
		    value = True
		  Else
		    value = False
		  End If
		  
		  Select Case cell.Tag
		    
		  Case "Bounce"
		    
		    Me.setBouncesXC(value)
		    
		  Case "Scroll"
		    me.SetScrollEnabledXC(value)
		    
		  Case "selection"
		    Me.SetAllowsSelectionXC(value)
		    
		  Case "remaining"
		    
		    Me.SetHideRemainingSeparatorsXC
		    If Not value Then
		      Me.UnselectTableRowXC
		      Return
		    End If
		    
		  Case "separators"
		    
		    If value Then
		      Me.SetSeparatorStyleXC(TableExtensionsXC.separatorStyle.singleLine)
		    Else
		      Me.SetSeparatorStyleXC(TableExtensionsXC.separatorStyle.none)
		    End If
		    
		  Case "SeparatorColor"
		    If value then
		      me.SetSeparatorColorXC(&cFF0000)
		    Else
		      me.SetSeparatorColorXC(&cDDDDDD)
		    End If
		    
		  Case "showscrollbar"
		    
		    me.SetScrollbarVisibleXC(value)
		    
		    
		    
		  Case "flash"
		    Me.FlashScrollIndicatorsXC
		    Me.UnselectTableRowXC
		    Return
		    
		  Case "scrollposition"
		    Dim pos() as Integer = me.GetScrollPositionXC
		    Dim rows() As Dictionary = sections(section).Value("rows")
		    Dim nd As Dictionary = rows(row)
		    nd.Value("detail") = pos(0).ToString + ":" + pos(1).ToString
		    
		    
		  Else
		    Me.UnselectTableRowXC
		    Return
		    
		  End Select
		  
		  
		  Dim rows() As Dictionary = sections(section).Value("rows")
		  Dim nd As Dictionary = rows(row)
		  
		  nd.Value("accessory") = If(value, MobileTableCellData.AccessoryTypes.Checkmark, MobileTableCellData.AccessoryTypes.None)
		  Me.ReloadRow(section, row)
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
