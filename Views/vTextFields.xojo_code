#tag IOSView
Begin iosView vTextFields
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "TextFields"
   Top             =   0
   Begin iOSTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField1, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TextField1, 7, , 0, False, +1.00, 4, 1, 200, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   60
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "With an icon"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   95
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSTextField TextField2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField2, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField2, 1, TextField1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField2, 3, TextField1, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TextField2, 7, , 0, False, +1.00, 4, 1, 200, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   60
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Border color"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   156
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSTextField TextField3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField3, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField3, 1, TextField2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField3, 3, TextField2, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TextField3, 7, , 0, False, +1.00, 4, 1, 200, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   60
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "Bezel Border"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   217
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSTextField TextField4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField4, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField4, 1, TextField3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField4, 3, TextField3, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TextField4, 7, , 0, False, +1.00, 4, 1, 200, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   60
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   "No Border"
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   278
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSTextField TextField6
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField6, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField6, 1, TextField4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField6, 3, TextField5, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TextField6, 7, , 0, False, +1.00, 4, 1, 200, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   60
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   ""
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   400
      Visible         =   True
      Width           =   200.0
   End
   Begin iOSTextField TextField5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TextField5, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TextField5, 1, TextField4, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField5, 3, TextField4, 4, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TextField5, 7, , 0, False, +1.00, 4, 1, 200, , True
      Enabled         =   True
      Height          =   31.0
      KeyboardType    =   "0"
      Left            =   60
      LockedInPosition=   False
      Password        =   False
      PlaceHolder     =   ""
      Scope           =   0
      Text            =   "Indented text"
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      TextFont        =   ""
      TextSize        =   0
      Top             =   339
      Visible         =   True
      Width           =   200.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events TextField1
	#tag Event
		Sub Open()
		  
		  Dim ic As iOSImage
		  
		  //Change the icon to grey color
		  ic = ExtensionsXC.ColoredIcon(ic8_lock, &c7F7F7F00)
		  
		  //Set the left icon
		  Me.SetLeftViewIconXC(ic)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField2
	#tag Event
		Sub Open()
		  Me.SetCornerRadiusXC(8.0)
		  Me.SetBorderColorXC(&cFF0000)
		  Me.SetBorderWidthXC(1.0)
		  'Me.setBorderStyle(TextFieldExtensionsXC.UITextFieldBorderStyle.Line)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField3
	#tag Event
		Sub Open()
		  me.SetBorderStyleXC(TextFieldExtensionsXC.UITextFieldBorderStyle.Bezel)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField4
	#tag Event
		Sub Open()
		  Me.SetBorderStyleXC(TextFieldExtensionsXC.UITextFieldBorderStyle.None)
		  Me.setBackgroundColorXC(&cDDDDDD)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField6
	#tag Event
		Sub Open()
		  If ExtensionsXC.kUseUIKit Then
		    Me.setPlaceholderColorXC("Placeholder is red", &cFF0000)
		  Else
		    Me.Visible = False
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField5
	#tag Event
		Sub Open()
		  
		  Me.SetTextIndentXC(20)
		  
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
