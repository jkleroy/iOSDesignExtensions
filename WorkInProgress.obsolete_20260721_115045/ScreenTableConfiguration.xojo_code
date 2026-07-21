#tag MobileScreen
Begin MobileScreen ScreenTableConfiguration Implements iOSMobileTableDataSource
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 4
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   NavigationBarColor=   
   NavigationBarTextColor=   
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   
   Title           =   "Untitled"
   Top             =   0
   _mTabBarVisible =   False
   Begin iOSMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      BackgroundColor =   
      ControlCount    =   0
      EditingEnabled  =   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   -1
      Format          =   0
      Height          =   747
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      SectionBackgroundColor=   
      SectionCount    =   0
      SectionTextColor=   
      SelectedRowColor=   
      TintColor       =   
      Top             =   65
      Visible         =   True
      Width           =   375
      _ClosingFired   =   False
      _OpeningCompleted=   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function RowCount(table As iOSMobileTable, section As Integer) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Return 2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  // Part of the iOSMobileTableDataSource interface.
		  
		  // Source https://developer.apple.com/documentation/uikit/uilistcontentconfiguration-c.class?language=objc
		  
		  if section = 0 then
		    
		    Dim cell As MobileTableCellData = table.CreateCell()
		    
		    ' ─────────────────────────────────────────────
		    ' Get the UITableViewCell handle from the MobileTableCell
		    ' ─────────────────────────────────────────────
		    Dim cellHandle As Ptr = cell.Handle  ' MobileTableCell.Handle gives the UITableViewCell*
		    
		    ' ─────────────────────────────────────────────
		    ' 1. Create a valueCellConfiguration
		    '    + [UIListContentConfiguration valueCellConfiguration]
		    ' ─────────────────────────────────────────────
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Declare Function objc_msgSend Lib "/usr/lib/libobjc.dylib" (target As Ptr, sel As Ptr) As Ptr
		    Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Declare Function valueCellConfiguration lib "UIKit" (obj as ptr) as ptr
		    
		    Dim uiListContentConfigurationClass As Ptr = NSClassFromString("UIListContentConfiguration")
		    Dim selValueCell As Ptr = NSSelectorFromString("valueCellConfiguration")
		    Dim config As Ptr = objc_msgSend(uiListContentConfigurationClass, selValueCell)
		    
		    
		    'Dim config As Ptr = valueCellConfiguration(uiListContentConfigurationClass)
		    
		    ' ─────────────────────────────────────────────
		    ' 2. Set the main text (left label)
		    '    config.text = @"My Label"
		    ' ─────────────────────────────────────────────
		    Declare Sub setText Lib "Foundation" Selector "setText:" (target As Ptr, value As CFStringRef)
		    Declare Sub setImage Lib "Foundation" Selector "setImage:" (target As Ptr, value As Ptr)
		    
		    if row = 0 then
		      setText(config, "Long Email address")
		    elseif row = 1 then
		      setText(config, "Longest Email address")
		    end if
		    
		    Dim pic As Picture = Picture.SystemImage("globe", 0)
		    if pic.Handle <> nil then
		      setImage(config, pic.Handle)
		    end if
		    
		    ' ─────────────────────────────────────────────
		    ' 3. Set the secondary text (right/value label)
		    '    config.secondaryText = @"Detail"
		    ' ─────────────────────────────────────────────
		    Declare Sub setSecondaryText Lib "Foundation" Selector "setSecondaryText:" (target As Ptr, value As CFStringRef)
		    
		    setSecondaryText(config, "jeremie.k.leroy@gmail.com")
		    
		    ' ─────────────────────────────────────────────
		    ' 4. Apply the configuration to the cell
		    '    cell.contentConfiguration = config
		    ' ─────────────────────────────────────────────
		    Declare Sub setContentConfiguration Lib "Foundation" Selector "setContentConfiguration:" (target As Ptr, config As Ptr)
		    
		    setContentConfiguration(cellHandle, config)
		    
		    
		    Return cell
		    
		  Else
		    
		    Dim cell As  MobileTableCellData = table.CreateCell("Long Email address", "jeremie.k.leroy@gmail.com")
		    cell.Image = Picture.SystemImage("globe", 0)
		    
		    Return cell
		    
		  end if
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionCount(table As iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Return 2
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  // Part of the iOSMobileTableDataSource interface.
		  
		  
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  me.DataSource = self
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
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
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
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
#tag EndViewBehavior
