#tag IOSView
Begin iosView vTable Implements iOSTableDataSource,iOSTableDataSourceEditing
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "Table"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      EditingEnabled  =   False
      EditingEnabled  =   False
      EstimatedRowHeight=   -1
      Format          =   "1"
      Height          =   415.0
      Left            =   0
      LockedInPosition=   True
      Scope           =   0
      SectionCount    =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddRow(section As Integer, text As Text, detail As Text, Accessory As iOSTableCellData.AccessoryTypes, tag As Auto, image As iOSImage = nil)
		  
		  'section As Integer, Text As Text, detail As Text, Accessory As iOSTableCellData.AccessoryTypes = iOSTableCellData.AccessoryTypes.Disclosure, tag As Auto, image As iOSImage = Nil
		  
		  dim nd As new Dictionary
		  nd.Value("text") = Text
		  nd.Value("detail") = detail
		  nd.Value("accessory") = Accessory
		  nd.Value("image") = image
		  nd.Value("tag") = tag
		  
		  
		  Dim rows() As xojo.Core.Dictionary
		  
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
		Sub AddSection(title As text, tag As Auto = nil)
		  
		  Dim d As new xojo.Core.Dictionary
		  d.Value("title") = title
		  d.Value("tag") = tag
		  d.Value("collapsed") = False
		  
		  
		  sections.Append d
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AddSection(title As text, tag As Auto = nil) As Integer
		  
		  AddSection(title, tag)
		  
		  Return Sections.Ubound
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowCount(table as iOSTable, section As Integer) As Integer
		  // Part of the iOSTableDataSource interface.
		  
		  #Pragma Unused table
		  
		  If section = -1 Or section > sections.Ubound Then
		    Return 0
		  End If
		  
		  Dim sectionDic As xojo.Core.Dictionary = sections(section)
		  
		  
		  If sectionDic.HasKey("rows") Then
		    
		    
		    Dim rows() As xojo.Core.Dictionary = sections(section).Value("rows")
		    
		    
		    Return rows.Ubound + 1
		    
		    
		  End If
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(table as iOSTable, section As Integer, row As Integer) As iOSTableCellData
		  // Part of the iOSTableDataSource interface.
		  
		  Dim cell As iOSTableCellData
		  Dim rows() As Dictionary = sections(section).Value("rows")
		  
		  
		  Dim nd As Dictionary = rows(row)
		  
		  
		  cell = table.CreateCustomCell(GetTypeInfo(cellGeneric))
		  
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
		Sub RowEditingCompleted(table As iOSTable, section As Integer, row As Integer, action As iOSTable.RowEditingStyles)
		  // Part of the iOSTableDataSourceEditing interface.
		  
		  #Pragma Unused table
		  #Pragma Unused section
		  
		  #Pragma Unused row
		  #Pragma Unused action
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowIsEditable(table As iOSTable, section As Integer, row As Integer) As Boolean
		  // Part of the iOSTableDataSourceEditing interface.
		  
		  Select Case Me.RowData(table, section, row).Tag
		    
		  Case "slide"
		    
		    Return True
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionCount(table as iOSTable) As Integer
		  // Part of the iOSTableDataSource interface.
		  #Pragma Unused table
		  
		  Return sections.Ubound+1
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SectionTitle(table as iOSTable, section As Integer) As Text
		  // Part of the iOSTableDataSource interface.
		  
		  #Pragma Unused table
		  
		  Return sections(section).Value("title")
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected sections() As xojo.Core.Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Open()
		  
		  Dim section As Integer
		  
		  section = Self.AddSection("Custom Action Button")
		  Self.AddRow(section, "Slide me to the left", "", iOSTableCellData.AccessoryTypes.None, "slide")
		  
		  
		  section = Self.AddSection("Table Style")
		  Self.AddRow(section, "Cell font", "", iOSTableCellData.AccessoryTypes.None, "font")
		  Self.AddRow(section, "Cell color", "", iOSTableCellData.AccessoryTypes.None, "cellcolor")
		  Self.AddRow(section, "Cell text color", "", iOSTableCellData.AccessoryTypes.None, "textcolor")
		  Self.AddRow(section, "Cell detail color", "Detail text", iOSTableCellData.AccessoryTypes.None, "detailcolor")
		  Self.AddRow(section, "Cell selected color", "", iOSTableCellData.AccessoryTypes.None, "selectedcolor")
		  Self.AddRow(section, "This is wrapped text that will appear on two lines", "", iOSTableCellData.AccessoryTypes.None, "wrap")
		  Self.AddRow(section, "No selection", "", iOSTableCellData.AccessoryTypes.None, "noselect")
		  
		  
		  section = Self.AddSection("Table Options")
		  Self.AddRow(section, "Allow Selection", "", iOSTableCellData.AccessoryTypes.Checkmark, "selection")
		  Self.AddRow(section, "Enable Bounce", "", iOSTableCellData.AccessoryTypes.Checkmark, "bounce")
		  Self.AddRow(section, "Hide Separators", "", iOSTableCellData.AccessoryTypes.none, "separators")
		  Self.AddRow(section, "Hide Remaining Separators", "", iOSTableCellData.AccessoryTypes.none, "remaining")
		  
		  
		  
		  section = Self.AddSection("Other")
		  Self.AddRow(section, "Flash scroll indicators", "", iOSTableCellData.AccessoryTypes.none, "flash")
		  
		  Me.DataSource = Self
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ActionsForRow(section As Integer, row As Integer) As iOSTableRowAction()
		  
		  Dim cell As iOSTableCellData = Me.RowData(section, row)
		  
		  If cell.Tag = Nil Then
		    Return Nil
		  End If
		  
		  Dim actions() As iOSTableRowAction
		  
		  Select Case cell.Tag
		    
		  Case "slide"
		    
		    //Creating a row action with no text
		    Dim action As iOSTableRowAction
		    action = New iOSTableRowAction(iOSTableRowAction.Styles.Normal, "", Nil)
		    action.SetIconXC(ic8_camera, &c21FE8000)
		    
		    actions.Append action
		    Return actions
		    
		    
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  
		  Dim cell As iOSTableCellData = Me.RowData(section, row)
		  
		  Dim value As Boolean
		  If cell.AccessoryType = iOSTableCellData.AccessoryTypes.None Then
		    value = True
		  Else
		    value = False
		  End If
		  
		  Select Case cell.Tag
		    
		  Case "Bounce"
		    
		    Me.setBouncesXC(value)
		    
		  Case "selection"
		    Me.SetAllowsSelectionXC(value)
		    
		  Case "remaining"
		    
		    Me.SetHideRemainingSeparatorsXC
		    If Not value Then
		      Me.UnselectTableRowXC
		      Return
		    End If
		    
		  Case "separators"
		    
		    If Not value Then
		      Me.SetSeparatorStyleXC(TableExtensionsXC.separatorStyle.singleLine)
		    Else
		      Me.SetSeparatorStyleXC(TableExtensionsXC.separatorStyle.none)
		    End If
		    
		    
		  Case "flash"
		    Me.FlashScrollIndicatorsXC
		    Me.UnselectTableRowXC
		    Return
		    
		  Else
		    Me.UnselectTableRowXC
		    Return
		    
		  End Select
		  
		  
		  Dim rows() As Dictionary = sections(section).Value("rows")
		  Dim nd As Dictionary = rows(row)
		  
		  nd.Value("accessory") = If(value, iOSTableCellData.AccessoryTypes.Checkmark, iOSTableCellData.AccessoryTypes.None)
		  Me.ReloadRow(section, row)
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Type="iOSImage"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
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
