#tag IOSView
Begin iosView vHome Implements iOSTableDataSource
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "iOS Design Extensions"
   Top             =   0
   Begin iOSTable Table
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AutoLayout      =   Table, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
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
	#tag Event
		Sub Activate()
		  
		  
		  Self.SetLargeTitlesXC(False, ViewExtensionsXC.LargeTitleDisplayMode.automatic)
		  
		  If Self.ParentSplitView <> Nil and app.currentSplitMode <> ViewExtensionsXC.UISplitViewControllerDisplayMode.PrimaryHidden and _
		    app.currentSplitMode <> ViewExtensionsXC.UISplitViewControllerDisplayMode.PrimaryOverlay then
		    
		    Self.ParentSplitView.setDisplayMode(ViewExtensionsXC.UISplitViewControllerDisplayMode.AllVisible)
		    app.currentSplitMode = ViewExtensionsXC.UISplitViewControllerDisplayMode.AllVisible
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  me.BackButtonTitle = " "
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddRow(section As Integer, text As Text, detail As Text, Accessory As iOSTableCellData.AccessoryTypes, tag As Auto, image As iOSImage = nil)
		  
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

	#tag Method, Flags = &h21
		Private Sub AddSection(title As text, tag As Auto = nil)
		  
		  Dim d As new xojo.Core.Dictionary
		  d.Value("title") = title
		  d.Value("tag") = tag
		  d.Value("collapsed") = False
		  
		  
		  sections.Append d
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AddSection(title As text, tag As Auto = nil) As Integer
		  
		  AddSection(title, tag)
		  
		  Return Sections.Ubound
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindType(au as Auto) As Text
		  'Function FindType(extends au as Auto) As Text
		  dim oTypeInfo as xojo.Introspection.TypeInfo = Xojo.Introspection.GetType(au)
		  
		  if oTypeInfo is nil then
		    Return "Nil"
		  end if
		  
		  return oTypeInfo.FullName
		  'End Function
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowCount(table as iOSTable, section As Integer) As Integer
		  #Pragma Unused table
		  
		  // Part of the iOSTableDataSource interface.
		  
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

	#tag Method, Flags = &h21
		Private Function RowData(table as iOSTable, section As Integer, row As Integer) As iOSTableCellData
		  // Part of the iOSTableDataSource interface.
		  
		  Dim cell As iOSTableCellData
		  Dim rows() As Dictionary = sections(section).Value("rows")
		  
		  Dim rowDic As Dictionary = rows(row)
		  
		  'cell = table.CreateCustomCell(GetTypeInfo(cellGeneric))
		  cell = table.CreateCell
		  
		  cell.Text = rowDic.lookup("text", "")
		  cell.DetailText = rowDic.lookup("detail", "")
		  cell.Image = rowDic.Lookup("image", Nil)
		  cell.AccessoryType = rowDic.lookup("accessory", iOSTableCellData.AccessoryTypes.None)
		  cell.Tag = rowDic.lookup("tag", Nil)
		  
		  
		  Return cell
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionCount(table as iOSTable) As Integer
		  // Part of the iOSTableDataSource interface.
		  #Pragma Unused table
		  
		  Return sections.Ubound()+1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionTitle(table as iOSTable, section As Integer) As Text
		  // Part of the iOSTableDataSource interface.
		  
		  #Pragma Unused table
		  
		  Return sections(section).Value("title")
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowView(parentView As iOSView, childView As iOSView)
		  #Pragma Unused parentView
		  #Pragma Unused childView
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected sections() As xojo.Core.Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events Table
	#tag Event
		Sub Open()
		  
		  Dim section As Integer
		  Dim accessory As iOSTableCellData.AccessoryTypes = iOSTableCellData.AccessoryTypes.Disclosure
		  
		  section = AddSection("Button Extensions")
		  
		  AddRow(section, "Buttons", "", accessory, GetTypeInfo(vButtons), ExtensionsXC.ColoredIcon(ic8_button, &c0F7FFE00))
		  
		  
		  section = AddSection("HTMLViewer Extensions")
		  AddRow(section, "HTMLViewer Examples", "", accessory, GetTypeInfo(vHTMLViewer), ExtensionsXC.ColoredIcon(ic8_html, &cE34E25))
		  
		  section = AddSection("TabBar Extensions")
		  AddRow(section, "TabBar Examples", "", accessory, "tabbar")
		  
		  
		  section = AddSection("Scroll Extensions")
		  AddRow(section, "Scroll Examples", "", accessory, GetTypeInfo(vScrollView), ExtensionsXC.ColoredIcon(ic8_updown, &cFC800800))
		  
		  
		  section = AddSection("Table Extensions")
		  AddRow(section, "Table Examples", "", accessory, GetTypeInfo(vTable), ExtensionsXC.ColoredIcon(ic8_list, &c66CCFE00))
		  
		  
		  section = AddSection("TextFields Extensions")
		  AddRow(section, "TextField Examples", "", accessory, GetTypeInfo(vTextFields), ExtensionsXC.ColoredIcon(ic8_sms, &cCC66FE00))
		  AddRow(section, "TextField Keyboards", "", accessory, GetTypeInfo(vTextFieldKeyboards), ExtensionsXC.ColoredIcon(ic8_sms, &c80004000))
		  AddRow(section, "TextArea Extension", "", accessory, GetTypeInfo(vTextArea), ExtensionsXC.ColoredIcon(ic8_textarea, &c3D97FE00))
		  
		  
		  
		  section = AddSection("View Extensions")
		  AddRow(section, "Big Progress Wheel", "", accessory, GetTypeInfo(vViewProgressWheel), ExtensionsXC.ColoredIcon(ic8_loading, &c80808000))
		  AddRow(section, "Hide Navigator on Swipe", "", accessory, GetTypeInfo(vHideNavigator), ic8_hide)
		  AddRow(section, "Large Titles", "", accessory, GetTypeInfo(vLargeTitles), ic8_bigfont)
		  AddRow(section, "Navigation Bar Color", "", accessory, GetTypeInfo(vNavbar), ExtensionsXC.ColoredIcon(ic_menu, &c073F8000))
		  AddRow(section, "ToolButtons", "", accessory, GetTypeInfo(vToolButton), ExtensionsXC.ColoredIcon(ic8_button, &c7F0FFE))
		  AddRow(section, "View Color", "", accessory, GetTypeInfo(vBackground), ExtensionsXC.ImageOriginalXC(ic8_color))
		  
		  
		  section = AddSection("Modal")
		  AddRow(section, "Modal View", "", accessory, "modal") 
		  AddRow(section, "Modal View Flip", "", accessory, "modalflip", ic8_flip_vertical)
		  AddRow(section, "Modal View Dissolve", "", accessory, "modaldissolve", ic8_direction)
		  'AddRow(section, "Modal View Curl", "", accessory, "modalcurl", ic8_paper)
		  
		  section = AddSection("UI Examples")
		  AddRow(section, "Netflix", "", accessory, "netflix", ExtensionsXC.ColoredIcon(ic8_netflix, &ce50914))
		  
		  
		  
		  section = AddSection("About")
		  AddRow(section, "Beautiful icons by icons8.com", "", accessory, "icons", ExtensionsXC.ImageOriginalXC(ic8_icons8))
		  AddRow(section, "Donate", "", accessory, "donate", ExtensionsXC.ImageOriginalXC(ic8_paypal))
		  
		  Me.DataSource = Self
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  
		  Dim tag As Auto = Me.RowData(section, row).Tag
		  
		  If Self.ParentSplitView <> Nil Then
		    
		    Self.ParentSplitView.setDisplayMode(ViewExtensionsXC.UISplitViewControllerDisplayMode.AllVisible)
		    
		  End If
		  
		  If FindType(tag) = "Text" Then
		    
		    Dim txtValue As Text = tag
		    Select Case txtValue
		      
		    Case "icons", "donate"
		      
		      Dim url As Text
		      If txtValue = "icons" then
		        url = "https://icons8.com"
		      Else
		        url = "https://www.paypal.me/JeremieLeroy"
		      End If
		      
		      Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		      Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		      Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		      
		      // https://developer.apple.com/library/mac/documentation/UIKit/Reference/Foundation/Classes/NSURL_Class/#//apple_ref/occ/clm/NSURL/URLWithString:
		      Declare Function URLWithString Lib "Foundation" Selector "URLWithString:" ( id As Ptr, URLString As CFStringRef ) As Ptr
		      Dim nsURL As Ptr = URLWithString(NSClassFromString("NSURL"), url)
		      
		      // https://developer.apple.com/Library/ios/documentation/UIKit/Reference/UIApplication_Class/index.html#//apple_ref/occ/instm/UIApplication/openURL:
		      Declare Function openURL Lib "UIKit" Selector "openURL:" (id As Ptr, nsurl As Ptr) As Boolean
		      Call openURL(sharedApp, nsURL)
		      
		      Return
		      
		      
		    Case "modal"
		      
		      Dim v As New vModal
		      Self.PushToShowModalXC(v, ViewExtensionsXC.UIModalPresentationStyle.formSheet)
		      
		    Case "modaldissolve"
		      
		      Dim v As New vModal
		      Self.PushToShowModalDissolveXC(v, ViewExtensionsXC.UIModalPresentationStyle.formSheet)
		      
		      
		    Case "modalflip"
		      
		      Dim v As New vModal
		      Self.PushToShowModalFlipXC(v, ViewExtensionsXC.UIModalPresentationStyle.formSheet)
		      
		      
		      'Case "modalcurl"
		      '
		      'Dim v As New vModal
		      'Self.PushToShowModalCurlXC(v, ViewExtensionsXC.UIModalPresentationStyle.formSheet)
		      
		      
		      
		    Case "tabbar"
		      
		      Dim tView As New iOSTabBar
		      
		      Dim v1 As New vTabBar
		      v1.TabIcon = ic8_customer
		      tView.AddTab(v1)
		      
		      
		      Dim v2 As New vEmpty
		      v2.TabIcon = ic_menu
		      
		      tView.AddTab(v2)
		      
		      
		      App.CurrentScreen.Content = tView
		      
		    Case "netflix"
		      
		      Dim tView As New iOSTabBar
		      
		      Dim v1 As New vNetflixHome
		      v1.TabIcon = ic8_home
		      v1.TabTitle = "Home"
		      tView.AddTab(v1)
		      
		      
		      Dim v2 As New vNetflixMore
		      v2.TabTitle = "More"
		      v2.TabIcon = ic_menu
		      tView.AddTab(v2)
		      
		      
		      App.CurrentScreen.Content = tView
		      
		    End Select
		    
		    Return
		  End If
		  
		  Dim info As Xojo.Introspection.TypeInfo = tag
		  Dim construct() As Xojo.Introspection.ConstructorInfo
		  
		  
		  construct = info.Constructors
		  
		  Dim useConstructor As Xojo.Introspection.ConstructorInfo
		  
		  
		  
		  Dim constructors() As Xojo.Introspection.ConstructorInfo = info.Constructors
		  For Each c As Xojo.Introspection.ConstructorInfo In constructors
		    If c.Parameters.Ubound = -1 Then
		      UseConstructor = c
		      Exit For c
		    End If
		  Next c
		  
		  Dim v As iOSView = useConstructor.Invoke
		  
		  If Self.ParentSplitView.Available Then
		    Self.ParentSplitView.Detail = v
		    
		  Else
		    
		    Self.PushTo(v)
		  End If
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
