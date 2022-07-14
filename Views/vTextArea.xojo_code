#tag MobileScreen
Begin MobileScreen vTextArea
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
   Title           =   "TextArea Extensions"
   Top             =   0
   Begin MobileTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   TextArea1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 4, 1, 169, , True
      BorderStyle     =   0
      ControlCount    =   0
      Enabled         =   True
      Height          =   169
      Left            =   20
      LockedInPosition=   True
      ReadOnly        =   False
      Scope           =   0
      Text            =   "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   73
      Visible         =   True
      Width           =   280
   End
   Begin MobileButton btGetScrollPos
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btGetScrollPos, 9, <Parent>, 9, False, +1.00, 4, 1, -54, , True
      AutoLayout      =   btGetScrollPos, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btGetScrollPos, 3, TextArea1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btGetScrollPos, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Get ScrollPos"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   56
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   250
      Visible         =   True
      Width           =   100
   End
   Begin MobileLabel lblScrollPos
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   lblScrollPos, 1, btGetScrollPos, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   lblScrollPos, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblScrollPos, 3, btGetScrollPos, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblScrollPos, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   164
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Unknown"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   250
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton btScrollTop
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btScrollTop, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btScrollTop, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btScrollTop, 3, <Parent>, 3, False, +1.00, 4, 1, 288, , True
      AutoLayout      =   btScrollTop, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Scroll to Top"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   288
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton btSearchQui
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btSearchQui, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btSearchQui, 7, , 0, False, +1.00, 4, 1, 173, , True
      AutoLayout      =   btSearchQui, 3, <Parent>, 3, False, +1.00, 4, 1, 326, , True
      AutoLayout      =   btSearchQui, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Search word ""qui"""
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   73
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   326
      Visible         =   True
      Width           =   173
   End
   Begin MobileButton btClearSelection
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btClearSelection, 1, btSearchQui, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btClearSelection, 7, , 0, False, +1.00, 4, 1, 173, , True
      AutoLayout      =   btClearSelection, 3, btSearchQui, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btClearSelection, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Clear selection"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   73
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   364
      Visible         =   True
      Width           =   173
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events btGetScrollPos
	#tag Event
		Sub Pressed()
		  
		  Dim pt As Point
		  pt = TextArea1.GetScrollPositionXC
		  
		  lblScrollPos.Text = pt.X.ToText(xojo.core.locale.raw, "0") + " x " + pt.Y.ToText(xojo.core.locale.raw, "0")
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblScrollPos
	#tag Event
		Sub Opening()
		  'me.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btScrollTop
	#tag Event
		Sub Pressed()
		  
		  Dim pt As New Point(0, 0)
		  
		  Dim animated As Boolean = True
		  
		  TextArea1.ScrollToXC(pt, Animated)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btSearchQui
	#tag Event
		Sub Pressed()
		  
		  Dim needle As String = "qui"
		  Dim haystack As String = TextArea1.Text
		  
		  Static lastPos As Integer
		  
		  //Searching the needle in haystack
		  Dim offset As Integer = haystack.IndexOf(lastPos, needle)
		  
		  If offset = -1 Then
		    //Needle not found start search from beginning
		    lastPos = 0
		    offset = haystack.IndexOf(lastPos, needle)
		  End If
		  
		  //Saving last search position
		  lastPos = offset + 1
		  
		  
		  
		  //Scrolling to position
		  Dim range As TextfieldExtensionsXC.NSRangeXC
		  range.loc = offset
		  range.Len = needle.Length
		  
		  TextArea1.SetSelectedRangeXC(range)
		  TextArea1.ScrollToRangeXC(range)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btClearSelection
	#tag Event
		Sub Pressed()
		  
		  
		  //Scrolling to position
		  Dim range As TextfieldExtensionsXC.NSRangeXC
		  range = TextArea1.GetSelectedRangeXC
		  range.Len = 0
		  
		  TextArea1.SetSelectedRangeXC(range)
		  
		  
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
