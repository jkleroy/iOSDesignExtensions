#tag MobileScreen
Begin MobileScreen vHDRColors
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
   Title           =   "HDR Colors"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileRectangle Rectangle1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Rectangle1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Rectangle1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Rectangle1, 8, , 0, False, +1.00, 4, 1, 100, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c000000
      Height          =   100
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   73
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileRectangle Rectangle2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle2, 1, Rectangle1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Rectangle2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Rectangle2, 3, Rectangle1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle2, 8, , 0, False, +1.00, 4, 1, 100, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c000000
      Height          =   100
      Left            =   128
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   73
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileRectangle Rectangle3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Rectangle3, 1, Rectangle2, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Rectangle3, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Rectangle3, 3, Rectangle2, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Rectangle3, 8, , 0, False, +1.00, 4, 1, 100, , True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &c000000
      Height          =   100
      Left            =   236
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   
      Top             =   73
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 1, Rectangle1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button1, 2, Rectangle2, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   Button1, 3, Rectangle3, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "No HDR"
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
      Top             =   181
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button2, 1, Button1, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button2, 11, Button1, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "0.5 HDR"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   128
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   181
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button3, 1, Button2, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button3, 11, Button1, 11, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "1.0 HDR"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   236
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   181
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileColorPicker ColorPicker1
      HasAlpha        =   False
      Height          =   32
      Height          =   32
      Left            =   180
      Left            =   180
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      Top             =   180
      Top             =   180
      Width           =   32
      Width           =   32
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  self.SetOverrideUserInterfaceStyleXC(ControlExtensionsXC.UIUserInterfaceStyle.Light)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  
		  
		  self.selectedColor = &c00C5C5
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		selectedColor As Color
	#tag EndProperty


#tag EndWindowCode

#tag Events Rectangle1
	#tag Event
		Sub Opening()
		  me.FillColor = color.Clear
		  
		  me.SetBackgroundColorXC(&c00C5C5)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Rectangle2
	#tag Event
		Sub Opening()
		  me.FillColor = color.Clear
		  
		  me.SetBackgroundColorXC(&c00C5C5, 0.5)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Rectangle3
	#tag Event
		Sub Opening()
		  me.FillColor = color.Clear
		  
		  me.SetBackgroundColorXC(&c00C5C5, 1.0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Pressed()
		  ColorPicker1.Show(self.selectedColor)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorXC(&cFFAE3B)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorXC(&cFFAE3B, 0.3)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  ColorPicker1.Show(self.selectedColor)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorXC(&cFFAE3B, 2.0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  ColorPicker1.Show(self.selectedColor)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ColorPicker1
	#tag Event
		Sub ColorSelected(selectedColor As Color)
		  self.selectedColor = selectedColor
		  
		  Rectangle1.SetBackgroundColorWithExposureXC(selectedColor, 0.0)
		  Rectangle2.SetBackgroundColorWithExposureXC(selectedColor, 0.4)
		  Rectangle3.SetBackgroundColorWithExposureXC(selectedColor, 1.0)
		  
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
