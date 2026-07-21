#tag MobileScreen
Begin MobileScreen Screen3
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 7
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
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 10, <Parent>, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Use identifier"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   391
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileSwitch Switch1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Switch1, 1, Label1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Switch1, 7, , 0, True, +1.00, 4, 1, 51, , True
      AutoLayout      =   Switch1, 3, Label1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Switch1, 8, , 0, True, +1.00, 4, 1, 31, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Left            =   128
      LockedInPosition=   False
      Scope           =   2
      ThumbColor      =   
      TintColor       =   
      Top             =   391
      Value           =   True
      Visible         =   True
      Width           =   51
      _ClosingFired   =   False
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 1, Label1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 2, Switch1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 3, Label1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Show screen"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   429
      Visible         =   True
      Width           =   159
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  Declare sub setIdentifier lib "UIKit" selector "setIdentifier:" (obj as ptr, value as CFStringRef)
		  
		  if level = 0 then
		    dim tb As new MobileToolbarButton(MobileToolbarButton.Types.Plain, "Label")
		    
		    
		    
		    
		    setIdentifier(tb.Handle, "com.example.label-custom-view")
		    
		    
		    self.RightNavigationToolbar.AddButton tb
		    
		  end if
		  
		  if useIdentifier then
		    Switch1.Value = true
		  end if
		  
		  app.TintColor = &cFF0000
		  
		  dim tb As new MobileToolbarButton(MobileToolbarButton.Types.Done, "")
		  
		  var id as ptr = tb.Handle
		  
		  setIdentifier(tb.Handle, "done-ident")
		  
		  
		  self.RightNavigationToolbar.AddButton tb
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  
		  
		  Var ident As String
		  
		  Declare function identifier lib "UIKit" selector "identifier" (obj as ptr) as CFStringRef
		  ident = identifier(button.Handle)
		  
		  System.DebugLog CurrentMethodName + ": " + ident
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		level As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		useIdentifier As Boolean = True
	#tag EndProperty


#tag EndWindowCode

#tag Events Switch1
	#tag Event
		Sub ValueChanged()
		  useIdentifier = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Pressed()
		  Dim s As new Screen3
		  
		  Var pics() as String
		  pics.Add "exclamationmark.triangle"
		  pics.Add "car.circle"
		  pics.Add "person.circle"
		  pics.Add "inset.filled.rectangle.and.person.filled"
		  pics.Add "person.crop.circle.fill"
		  
		  dim tb As new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage(pics(System.Random.InRange(0, pics.LastIndex)), 0))
		  
		  Declare sub setIdentifier lib "UIKit" selector "setIdentifier:" (obj as ptr, value as CFStringRef)
		  
		  if level = 0 or useIdentifier then
		    setIdentifier(tb.Handle, "com.example.label-custom-view")
		  end if
		  
		  s.RightNavigationToolbar.AddButton tb
		  
		  s.useIdentifier = self.useIdentifier
		  s.level = self.level + 1
		  
		  s.Show(self)
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
	#tag ViewProperty
		Name="level"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="useIdentifier"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
