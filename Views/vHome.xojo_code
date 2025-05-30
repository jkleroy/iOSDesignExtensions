#tag MobileScreen
Begin MobileScreen vHome Implements iOSMobileTableDataSource
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   1
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
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
      TintColor       =   &c000000
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
		  
		  
		  Self.SetLargeTitlesXC(False, ViewExtensionsXC.LargeTitleDisplayMode.automatic)
		  
		  If Self.ParentSplitView <> Nil and app.currentSplitMode <> SplitViewExtensionsXC.UISplitViewControllerDisplayMode.secondaryOnly and _
		    app.currentSplitMode <> SplitViewExtensionsXC.UISplitViewControllerDisplayMode.oneOverSecondary then
		    
		    Self.ParentSplitView.setDisplayModeXC(SplitViewExtensionsXC.UISplitViewControllerDisplayMode.oneBesideSecondary)
		    app.currentSplitMode = SplitViewExtensionsXC.UISplitViewControllerDisplayMode.oneBesideSecondary
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  'me.BackButtonCaption = " "
		  
		  
		  'self.SetPrefersHomeIndicatorAutoHiddenXC(True)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddRow(section As Integer, text As String, detail As String, Accessory As MobileTableCellData.AccessoryTypes, tag As Variant, image As Picture = nil)
		  
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
		  
		  Return Sections.LastIndex
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
		  
		  Return sections.LastIndex()+1
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
		  
		  img = Picture.SystemImage("button.horizontal", 0)
		  AddRow(section, "Buttons", "", accessory, GetTypeInfo(vButtons), ImageExtensionsXC.ImageWithColorXC(img, &c0F7FFE00))
		  
		  section = AddSection("Label Extensions")
		  img = Picture.SystemImage("textformat", 0)
		  AddRow(section, "Labels", "", accessory, GetTypeInfo(vLabels), ImageExtensionsXC.ImageWithColorXC(img, &c0F7FFE00))
		  
		  
		  
		  section = AddSection("HTMLViewer Extensions")
		  img = Picture.SystemImage("chevron.left.forwardslash.chevron.right", 0)
		  AddRow(section, "HTMLViewer Examples", "", accessory, GetTypeInfo(vHTMLViewer), ImageExtensionsXC.ImageWithColorXC(img, &cE34E25))
		  
		  section = AddSection("TabBar Extensions")
		  img = Picture.SystemImage("circle.grid.2x1", 0)
		  AddRow(section, "TabBar Examples", "", accessory, "tabbar", img)
		  
		  
		  section = AddSection("Image Extensions")
		  img = Picture.SystemImage("photo", 0)
		  AddRow(section, "Image Examples", "", accessory, GetTypeInfo(vImageExtensions), ImageExtensionsXC.ImageWithColorXC(img, Color.Blue))
		  
		  
		  section = AddSection("Scroll Extensions")
		  img = Picture.SystemImage("arrow.up.arrow.down", 0)
		  AddRow(section, "Scroll Examples", "", accessory, GetTypeInfo(vScrollView), ImageExtensionsXC.ImageWithColorXC(img, &cFC800800))
		  
		  
		  section = AddSection("Table Extensions")
		  AddRow(section, "Table Examples", "", accessory, GetTypeInfo(vTable), Picture.SystemImage("list.dash", 0, Picture.SystemImageWeights.Regular, &c66CCFE))
		  
		  
		  
		  section = AddSection("TextFields Extensions")
		  AddRow(section, "TextField Examples", "", accessory, GetTypeInfo(vTextFields), ImageExtensionsXC.ImageWithColorXC(ic8_sms, &cCC66FE00))
		  AddRow(section, "TextField Keyboards", "", accessory, GetTypeInfo(vTextFieldKeyboards), ImageExtensionsXC.ImageWithColorXC(ic8_sms, &c80004000))
		  AddRow(section, "TextArea Extension", "", accessory, GetTypeInfo(vTextArea), ImageExtensionsXC.ImageWithColorXC(ic8_textarea, &c3D97FE00))
		  
		  
		  
		  section = AddSection("View Extensions")
		  AddRow(section, "Big Progress Wheel", "", accessory, GetTypeInfo(vViewProgressWheel), ImageExtensionsXC.ImageWithColorXC(ic8_loading, &c80808000))
		  AddRow(section, "Hide Navigator on Swipe", "", accessory, GetTypeInfo(vHideNavigator), Picture.SystemImage("eye.slash", 0))
		  AddRow(section, "Large Titles", "", accessory, GetTypeInfo(vLargeTitles), Picture.SystemImage("textformat.size.larger", 0, Picture.SystemImageWeights.Bold))
		  AddRow(section, "Navigation Bar Color / Image", "", accessory, GetTypeInfo(vNavbar), Picture.SystemImage("line.3.horizontal", 0, Picture.SystemImageWeights.Regular, &c073F8000))
		  AddRow(section, "ToolButtons", "", accessory, GetTypeInfo(vToolButton), ImageExtensionsXC.ImageWithColorXC(ic8_button, &c7F0FFE))
		  AddRow(section, "View Color", "", accessory, GetTypeInfo(vBackground), ImageExtensionsXC.ImageOriginalXC(ic8_color))
		  AddRow(section, "Screen Options", "", accessory, GetTypeInfo(vScreenOptions), Picture.SystemImage("gearshape.circle", 0))
		  
		  
		  section = AddSection("Modal")
		  AddRow(section, "Modal View", "", accessory, "modal") 
		  AddRow(section, "Modal View (Swipe disabled)", "", accessory, "modalfull") 
		  AddRow(section, "Sheet (iOS 15+)", "", accessory, "sheet")
		  
		  
		  section = AddSection("Animations")
		  AddRow(section, "Animate", "", accessory, GetTypeInfo(vAnimate), Picture.SystemImage("livephoto", 0))
		  
		  section = AddSection("Application extensions")
		  AddRow(section, "Open Settings", "", accessory, "opensettings", Picture.SystemImage("gear.circle", 0))
		  
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
		  
		  Dim fType As String = FindType(tag)
		  
		  If fType = "Text" or fType = "String" Then
		    
		    Dim txtValue As String = tag
		    Select Case txtValue
		      
		    Case "icons", "donate"
		      
		      Dim url As String
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
		      
		    Case "sheet"
		      Dim v As new vModal
		      v.showsheetXC(self, ViewExtensionsXC.UISheetPresentationControllerDetent.medium_large, True)
		      
		      
		      
		      'v.SetPreferredContentSizeXC(new size(self.ContentSize.Width, 100))
		      
		    Case "modal"
		      
		      Dim v As New vModal
		      Self.PushToShowModalXC(v, ViewExtensionsXC.UIModalPresentationStyle.formSheet)
		      
		      
		      v.SetPreferredContentSizeXC(new Size(500, 300))
		      
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
		    
		    
		    me.UnselectTableRowXC //Removes the selection from the row
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
