#tag MobileScreen
Begin MobileScreen vHome Implements iOSMobileTableDataSource
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   "&h00000000"
   Title           =   "iOS Design Extensions"
   Top             =   0
   Begin iOSMobileTable Table
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   Table, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   Table, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Table, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
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
      TintColor       =   ""
      Top             =   65
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  
		  
		  Self.SetLargeTitlesXC(False, ViewExtensionsXC.LargeTitleDisplayMode.automatic)
		  
		  If Self.ParentSplitView <> Nil and app.currentSplitMode <> ViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly and _
		    app.currentSplitMode <> ViewExtensionsXC.UISplitViewControllerDisplayMode.oneOverSecondary then
		    
		    Self.ParentSplitView.setDisplayModeXC(ViewExtensionsXC.UISplitViewControllerDisplayMode.oneBesideSecondary)
		    app.currentSplitMode = ViewExtensionsXC.UISplitViewControllerDisplayMode.oneBesideSecondary
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  me.BackButtonCaption = " "
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddRow(section As Integer, text As Text, detail As Text, Accessory As MobileTableCellData.AccessoryTypes, tag As Auto, image As Picture = nil)
		  
		  'section As Integer, Text As Text, detail As Text, Accessory As MobileTableCellData.AccessoryTypes = MobileTableCellData.AccessoryTypes.Disclosure, tag As Auto, image As iOSImage = Nil
		  
		  dim nd As new Dictionary
		  nd.Value("text") = Text
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

	#tag Method, Flags = &h21
		Private Sub AddSection(title As text, tag As Auto = nil)
		  
		  Dim d As new Dictionary
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
		Private Function RowCount(table as iOSMobileTable, section As Integer) As Integer
		  #Pragma Unused table
		  
		  // Part of the iOSMobileTableDataSource interface.
		  
		  If section = -1 Or section > sections.Ubound Then
		    Return 0
		  End If
		  
		  Dim sectionDic As Dictionary = sections(section)
		  
		  
		  If sectionDic.HasKey("rows") Then
		    
		    Dim rows() As Dictionary = sections(section).Value("rows")
		    
		    Return rows.Ubound + 1
		    
		    
		  End If
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Dim cell As MobileTableCellData
		  Dim rows() As Dictionary = sections(section).Value("rows")
		  
		  Dim rowDic As Dictionary = rows(row)
		  
		  'cell = table.CreateCustomCell(GetTypeInfo(cellGeneric))
		  cell = table.CreateCell
		  
		  cell.Text = rowDic.lookup("text", "")
		  cell.DetailText = rowDic.lookup("detail", "")
		  cell.Image = rowDic.Lookup("image", Nil)
		  cell.AccessoryType = rowDic.lookup("accessory", MobileTableCellData.AccessoryTypes.None)
		  cell.Tag = rowDic.lookup("tag", Nil)
		  
		  
		  Return cell
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionCount(table as iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  #Pragma Unused table
		  
		  Return sections.Ubound()+1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  // Part of the iOSMobileTableDataSource interface.
		  
		  #Pragma Unused table
		  
		  Return sections(section).Value("title")
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowView(parentView As MobileScreen, childView As iOSView)
		  #Pragma Unused parentView
		  #Pragma Unused childView
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		sections() As Dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events Table
	#tag Event
		Sub Opening()
		  
		  Dim section As Integer
		  Dim accessory As MobileTableCellData.AccessoryTypes = MobileTableCellData.AccessoryTypes.Disclosure
		  Dim img As Picture
		  
		  section = AddSection("Button Extensions")
		  
		  img = ic8_button
		  AddRow(section, "Buttons", "", accessory, GetTypeInfo(vButtons), ImageExtensionsXC.ImageWithColorXC(img, &c0F7FFE00))
		  
		  
		  section = AddSection("HTMLViewer Extensions")
		  img = ic8_html
		  AddRow(section, "HTMLViewer Examples", "", accessory, GetTypeInfo(vHTMLViewer), ImageExtensionsXC.ImageWithColorXC(img, &cE34E25))
		  
		  section = AddSection("TabBar Extensions")
		  AddRow(section, "TabBar Examples", "", accessory, "tabbar")
		  
		  
		  section = AddSection("Image Extensions")
		  img = ic8_picture
		  AddRow(section, "Image Examples", "", accessory, GetTypeInfo(vImageExtensions), ImageExtensionsXC.ImageWithColorXC(img, Color.Blue))
		  
		  
		  section = AddSection("Scroll Extensions")
		  img = ic8_updown
		  AddRow(section, "Scroll Examples", "", accessory, GetTypeInfo(vScrollView), ImageExtensionsXC.ImageWithColorXC(img, &cFC800800))
		  
		  
		  section = AddSection("Table Extensions")
		  AddRow(section, "Table Examples", "", accessory, GetTypeInfo(vTable), ImageExtensionsXC.ImageWithColorXC(ic8_list, &c66CCFE00))
		  
		  
		  section = AddSection("TextFields Extensions")
		  AddRow(section, "TextField Examples", "", accessory, GetTypeInfo(vTextFields), ImageExtensionsXC.ImageWithColorXC(ic8_sms, &cCC66FE00))
		  AddRow(section, "TextField Keyboards", "", accessory, GetTypeInfo(vTextFieldKeyboards), ImageExtensionsXC.ImageWithColorXC(ic8_sms, &c80004000))
		  AddRow(section, "TextArea Extension", "", accessory, GetTypeInfo(vTextArea), ImageExtensionsXC.ImageWithColorXC(ic8_textarea, &c3D97FE00))
		  
		  
		  
		  section = AddSection("View Extensions")
		  AddRow(section, "Big Progress Wheel", "", accessory, GetTypeInfo(vViewProgressWheel), ImageExtensionsXC.ImageWithColorXC(ic8_loading, &c80808000))
		  AddRow(section, "Hide Navigator on Swipe", "", accessory, GetTypeInfo(vHideNavigator), ic8_hide)
		  AddRow(section, "Large Titles", "", accessory, GetTypeInfo(vLargeTitles), ic8_bigfont)
		  AddRow(section, "Navigation Bar Color", "", accessory, GetTypeInfo(vNavbar), ImageExtensionsXC.ImageWithColorXC(ic_menu, &c073F8000))
		  AddRow(section, "ToolButtons", "", accessory, GetTypeInfo(vToolButton), ImageExtensionsXC.ImageWithColorXC(ic8_button, &c7F0FFE))
		  AddRow(section, "View Color", "", accessory, GetTypeInfo(vBackground), ImageExtensionsXC.ImageOriginalXC(ic8_color))
		  
		  
		  section = AddSection("Modal")
		  AddRow(section, "Modal View", "", accessory, "modal") 
		  AddRow(section, "Modal View (Swipe disabled)", "", accessory, "modalfull") 
		  
		  section = AddSection("Application extensions")
		  AddRow(section, "Open Settings", "", accessory, "opensettings")
		  
		  //Deprecatedd
		  'AddRow(section, "Modal View Flip", "", accessory, "modalflip", ic8_flip_vertical)
		  'AddRow(section, "Modal View Dissolve", "", accessory, "modaldissolve", ic8_direction)
		  'AddRow(section, "Modal View Curl", "", accessory, "modalcurl", ic8_paper)
		  
		  section = AddSection("UI Examples")
		  AddRow(section, "Netflix", "", accessory, "netflix", ImageExtensionsXC.ImageWithColorXC(ic8_netflix, &ce50914))
		  
		  
		  
		  section = AddSection("About")
		  AddRow(section, "Beautiful icons by icons8.com", "", accessory, "icons", ImageExtensionsXC.ImageOriginalXC(ic8_icons8))
		  AddRow(section, "Donate", "", accessory, "donate", ImageExtensionsXC.ImageOriginalXC(ic8_paypal))
		  
		  Me.DataSource = Self
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(section As Integer, row As Integer)
		  
		  Dim tag As Auto = Me.RowCellData(section, row).Tag
		  
		  If Self.ParentSplitView <> Nil Then
		    
		    Self.ParentSplitView.setDisplayModeXC(ViewExtensionsXC.UISplitViewControllerDisplayMode.oneBesideSecondary)
		    
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
		      
		    Case "modalfull"
		      
		      Dim v As New vModal
		      Self.PushToShowModalXC(v, ViewExtensionsXC.UIModalPresentationStyle.formSheet)
		      
		      v.SetFullModalXC
		      
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
		      
		    Case "opensettings"
		      
		      app.OpeniOSSettingsXC
		      
		    Case "tabbar"
		      
		      Dim tView As New iOSTabBar
		      
		      Dim v1 As New vTabBar
		      v1.TabIcon = ic8_customer
		      tView.AddTab(v1)
		      
		      
		      Dim v2 As New vEmpty
		      v2.TabIcon = ic_menu
		      
		      tView.AddTab(v2)
		      
		      
		      App.CurrentLayout.Content = tView
		      
		    Case "netflix"
		      
		      Dim tView As New iOSTabBar
		      
		      Dim v1 As New vNetflixHome
		      v1.TabIcon = ic8_home
		      'v1.TabTitle = "Home"
		      tView.AddTab(v1)
		      
		      
		      Dim v2 As New vNetflixMore
		      v2.TabIcon = ic_menu
		      'v2.TabTitle = "More"
		      tView.AddTab(v2)
		      
		      
		      App.CurrentLayout.Content = tView
		      
		    End Select
		    
		    Return
		  End If
		  
		  Dim info As Xojo.Introspection.TypeInfo = tag
		  Dim construct() As Xojo.Introspection.ConstructorInfo
		  
		  
		  construct = info.Constructors
		  
		  Dim useConstructor As Xojo.Introspection.ConstructorInfo
		  
		  
		  
		  Dim constructors() As Xojo.Introspection.ConstructorInfo = info.Constructors
		  For Each c As Xojo.Introspection.ConstructorInfo In constructors
		    If c.Parameters.LastRowIndex = -1 Then
		      UseConstructor = c
		      Exit For c
		    End If
		  Next c
		  
		  Dim v As MobileScreen = useConstructor.Invoke
		  
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
