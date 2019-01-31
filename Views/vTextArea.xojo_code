#tag IOSView
Begin iosView vTextArea
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "TextArea Extensions"
   Top             =   0
   Begin iOSTextArea TextArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextArea1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   TextArea1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   TextArea1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   TextArea1, 8, , 0, False, +1.00, 4, 1, 169, , True
      Editable        =   False
      Height          =   169.0
      KeyboardType    =   "0"
      Left            =   20
      LockedInPosition=   True
      Scope           =   0
      Text            =   "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   73
      Visible         =   True
      Width           =   280.0
   End
   Begin iOSButton btGetScrollPos
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btGetScrollPos, 9, <Parent>, 9, False, +1.00, 4, 1, -54, , True
      AutoLayout      =   btGetScrollPos, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btGetScrollPos, 3, TextArea1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btGetScrollPos, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Get ScrollPos"
      Enabled         =   True
      Height          =   30.0
      Left            =   56
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   250
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSLabel lblScrollPos
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   lblScrollPos, 1, btGetScrollPos, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   lblScrollPos, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   lblScrollPos, 3, btGetScrollPos, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   lblScrollPos, 8, , 0, False, +1.00, 4, 1, 30, , True
      Enabled         =   True
      Height          =   30.0
      Left            =   164
      LineBreakMode   =   "0"
      LockedInPosition=   False
      Scope           =   0
      Text            =   "Untitled"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   250
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton btScrollTop
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btScrollTop, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btScrollTop, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   btScrollTop, 3, <Parent>, 3, False, +1.00, 4, 1, 288, , True
      AutoLayout      =   btScrollTop, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Scroll to Top"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   288
      Visible         =   True
      Width           =   100.0
   End
   Begin iOSButton btSearchQui
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btSearchQui, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btSearchQui, 7, , 0, False, +1.00, 4, 1, 173, , True
      AutoLayout      =   btSearchQui, 3, <Parent>, 3, False, +1.00, 4, 1, 326, , True
      AutoLayout      =   btSearchQui, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Search word ""qui"""
      Enabled         =   True
      Height          =   30.0
      Left            =   73
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   326
      Visible         =   True
      Width           =   173.0
   End
   Begin iOSButton btClearSelection
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btClearSelection, 1, btSearchQui, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btClearSelection, 7, , 0, False, +1.00, 4, 1, 173, , True
      AutoLayout      =   btClearSelection, 3, btSearchQui, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btClearSelection, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Clear selection"
      Enabled         =   True
      Height          =   30.0
      Left            =   73
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   364
      Visible         =   True
      Width           =   173.0
   End
End
#tag EndIOSView

#tag WindowCode
#tag EndWindowCode

#tag Events btGetScrollPos
	#tag Event
		Sub Action()
		  
		  Dim pt As Xojo.Core.Point
		  pt = TextArea1.GetScrollPositionXC
		  lblScrollPos.Text = pt.X.ToText(xojo.core.locale.raw, "0") + " x " + pt.Y.ToText(xojo.core.locale.raw, "0")
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lblScrollPos
	#tag Event
		Sub Open()
		  me.Text = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btScrollTop
	#tag Event
		Sub Action()
		  
		  Dim pt As New Xojo.Core.Point(0, 0)
		  
		  Dim animated As Boolean = True
		  
		  TextArea1.ScrollToXC(pt, Animated)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btSearchQui
	#tag Event
		Sub Action()
		  
		  Dim needle As Text = "qui"
		  Dim haystack As Text = TextArea1.Text
		  
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
		Sub Action()
		  
		  
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
