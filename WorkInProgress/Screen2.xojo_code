#tag MobileScreen
Begin MobileScreen Screen2
   BackButtonCaption=   ""
   BackgroundColor =   
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
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
   Title           =   "Navigation subtitle view"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Button"
      CaptionColor    =   &cFFFFFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   165
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button2, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Button"
      CaptionColor    =   &cFFFFFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   203
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Button3, 3, Button2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 250, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Button"
      CaptionColor    =   &cFFFFFF00
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   30
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   241
      Visible         =   True
      Width           =   250
      _ClosingFired   =   False
   End
   Begin MobileColorPicker ColorPicker1
      HasAlpha        =   False
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Scope           =   0
      Top             =   0
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Activated()
		  SetupSubtitleSegmentedControl
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  self.SetBackgroundColorXC(&c0)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetupSubtitleSegmentedControl()
		  if ExtensionsXC.GetiOSVersionXC < 26.0 then Return
		  
		  // ── 1. Get the UINavigationItem from the view controller ──────────────
		  Declare Function navigationItem Lib "UIKit" Selector "navigationItem" (vc As Ptr) As Ptr
		  Dim navItem As Ptr = navigationItem(Self.ViewControllerHandle)
		  If navItem = Nil Then Return
		  
		  
		  Dim seg As new MobileSegmentedButton
		  seg.AddSegment(new MobileSegment("First"))
		  seg.AddSegment(new MobileSegment("Second"))
		  seg.AddSegment(new MobileSegment("Third"))
		  
		  #if False
		    
		    // ── 2. Create a UISegmentedControl ────────────────────────────────────
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    Declare Function alloc Lib "UIKit" Selector "alloc" (cls As Ptr) As Ptr
		    Declare Function init Lib "UIKit" Selector "init" (obj As Ptr) As Ptr
		    Dim segClass As Ptr = NSClassFromString("UISegmentedControl")
		    Dim seg As Ptr = alloc(segClass)
		    seg = init(seg)
		    // ── 3. Add segments ───────────────────────────────────────────────────
		    Declare Sub insertSegmentWithTitle Lib "UIKit" _
		    Selector "insertSegmentWithTitle:atIndex:animated:" _
		    (obj As Ptr, title As CFStringRef, index As Integer, animated As Boolean)
		    insertSegmentWithTitle(seg, "First",  0, False)
		    insertSegmentWithTitle(seg, "Second", 1, False)
		    insertSegmentWithTitle(seg, "Third",  2, False)
		    // ── 4. Select default segment ─────────────────────────────────────────
		    Declare Sub setSelectedSegmentIndex Lib "UIKit" _
		    Selector "setSelectedSegmentIndex:" (obj As Ptr, index As Integer)
		    setSelectedSegmentIndex(seg, 0)
		    
		  #endif
		  
		  
		  // ── 5. Size to fit its content ────────────────────────────────────────
		  Declare Sub sizeToFit Lib "UIKit" Selector "sizeToFit" (obj As Ptr)
		  sizeToFit(seg.Handle)
		  // ── 6. Assign as the subtitleView (iOS 26) ────────────────────────────
		  Declare Sub setSubtitleView Lib "UIKit" _
		  Selector "setSubtitleView:" (navItem As Ptr, view As Ptr)
		  setSubtitleView(navItem, seg.Handle)
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorXC(&cFF0000)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  ColorPicker1.Show(&c0, "", self)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorWithExposureXC(&cFF0000, 0.5)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorWithExposureXC(&cFF0000, 3)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ColorPicker1
	#tag Event
		Sub ColorSelected(selectedColor As Color)
		  Button1.SetBackgroundColorXC(selectedColor)
		  Button2.SetBackgroundColorXC(selectedColor, 0.4)
		  Button3.SetBackgroundColorXC(selectedColor, 3.0)
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
