#tag MobileScreen
Begin MobileScreen vAnimate
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Animations"
   Top             =   0
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "P"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   115
      Visible         =   True
      Width           =   30
      _ClosingFired   =   False
   End
   Begin MobileImageViewer ImageViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ImageViewer1, 8, , 0, False, +1.00, 4, 1, 160, img_height, True
      AutoLayout      =   ImageViewer1, 1, Button1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ImageViewer1, 3, Button1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   ImageViewer1, 7, , 0, False, +1.00, 4, 1, 160, , True
      ControlCount    =   0
      DisplayMode     =   1
      Enabled         =   True
      Height          =   160
      Image           =   0
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   153
      URL             =   ""
      Visible         =   True
      Width           =   160
      _ClosingFired   =   False
   End
   Begin MobileButton Button2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button2, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Button2, 7, , 0, False, +1.00, 4, 1, 104, , True
      AutoLayout      =   Button2, 3, ImageViewer1, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Change height"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   196
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   153
      Visible         =   True
      Width           =   104
      _ClosingFired   =   False
   End
   Begin MobileRectangle rectToast
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   rectToast, 8, , 0, False, +1.00, 4, 1, 43, , True
      AutoLayout      =   rectToast, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   rectToast, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   rectToast, 3, <Parent>, 4, False, +1.00, 4, 1, 20, toast_top, True
      BorderColor     =   &c000000
      BorderThickness =   0.0
      ControlCount    =   0
      CornerSize      =   8.0
      Enabled         =   True
      FillColor       =   &c000000
      Height          =   43
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   588
      Visible         =   False
      Width           =   280
      _ClosingFired   =   False
      Begin MobileLabel Label1
         AccessibilityHint=   ""
         AccessibilityLabel=   ""
         Alignment       =   1
         AutoLayout      =   Label1, 9, rectToast, 9, False, +1.00, 4, 1, 0, , True
         AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
         AutoLayout      =   Label1, 10, rectToast, 10, False, +1.00, 4, 1, 0, , True
         AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 150, , True
         ControlCount    =   0
         Enabled         =   True
         Height          =   30
         InitialParent   =   "rectToast"
         Left            =   85
         LineBreakMode   =   0
         LockedInPosition=   False
         MaximumCharactersAllowed=   0
         PanelIndex      =   0
         Parent          =   "rectToast"
         Scope           =   2
         SelectedText    =   ""
         SelectionLength =   0
         SelectionStart  =   0
         Text            =   "Animated toast"
         TextColor       =   &c000000
         TextFont        =   ""
         TextSize        =   0
         TintColor       =   &c000000
         Top             =   594
         Visible         =   True
         Width           =   150
         _ClosingFired   =   False
      End
   End
   Begin MobileButton Button3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button3, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button3, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button3, 3, ImageViewer1, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Button3, 7, , 0, False, +1.00, 4, 1, 104, , True
      Caption         =   "Animate toast"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   108
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   363
      Visible         =   True
      Width           =   104
      _ClosingFired   =   False
   End
   Begin MobileButton Button4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button4, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Button4, 8, , 0, False, +1.00, 4, 1, 40, , True
      AutoLayout      =   Button4, 3, Button3, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   Button4, 7, , 0, False, +1.00, 4, 1, 180, , True
      Caption         =   "Animated Button"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   40
      Left            =   70
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   443
      Visible         =   True
      Width           =   180
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Method, Flags = &h1
		Protected Sub AnimateButton()
		  
		  //new v2.18
		  //Animate the buy button
		  Dim animate_options As Integer = Ctype(ViewExtensionsXC.UIViewAnimationOptions.Repeat, Integer) +_
		  Ctype(ViewExtensionsXC.UIViewAnimationOptions.Autoreverse, Integer) + _
		  Ctype(ViewExtensionsXC.UIViewAnimationOptions.AllowUserInteraction, Integer)
		  
		  Dim animations as new ObjCBlock (AddressOf AnimateButtonAnimations)
		  
		  Dim delay As Double = 0.5
		  
		  ViewExtensionsXC.AnimateWithDurationOptionsXC(0.9, delay, animate_options, animations, nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AnimateButtonAnimations()
		  
		  Declare sub transform lib "UIKit.framework" selector "setTransform:" (obj_id as ptr, matrix as ExtensionsXC.xcCGAffineTransform)
		  Declare function CGAffineTransformMakeScale lib "CoreGraphics.framework" (sx as CGFloat, sy as CGFloat) as ExtensionsXC.xcCGAffineTransform
		  
		  Dim scale As ExtensionsXC.xcCGAffineTransform
		  scale = CGAffineTransformMakeScale(1.1, 1.1)
		  
		  
		  transform(Button4.Handle, scale) //The button to animate needs to be defined here
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Hidetoast()
		  
		  
		  ViewExtensionsXC.AnimateWithDurationXC(0.5, new iosblock(AddressOf hidetoast_animated), new iosblock(AddressOf HideToast_end))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Hidetoast_animated()
		  
		  
		  rectToast.SetAlphaValueXC(0.0)
		  
		  self.LayoutIfNeededXC
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HideToast_end()
		  rectToast.Visible = False
		  
		  
		  
		  self.Constraint("toast_top").Offset = 20
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Showtoast()
		  //Make sure it will slide from the bottom
		  self.Constraint("toast_top").Offset = 20
		  
		  //Make sure it is visible
		  rectToast.Visible = True
		  rectToast.SetAlphaValueXC(1.0)
		  
		  //Now animate the constraint
		  ViewExtensionsXC.AnimateWithDurationXC(0.5, new iosblock(AddressOf Showtoast_animated))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Showtoast_animated()
		  
		  rectToast.Visible = True
		  
		  self.Constraint("toast_top").Offset = -60
		  
		  self.LayoutIfNeededXC
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateButton()
		  if buttonValue then
		    
		    button1.SetImageXC(Picture.SystemImage("stop.circle", 0))
		    
		  else
		    
		    Button1.SetImageXC(Picture.SystemImage("play.circle", 0))
		    
		  end if
		  
		  self.LayoutIfNeededXC
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateImageHeight()
		  if self.Constraint("img_height").Offset = 30 then
		    
		    self.Constraint("img_height").Offset = 160
		    
		  else
		    
		    self.Constraint("img_height").Offset = 30
		  end if
		  
		  self.LayoutIfNeededXC
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private buttonValue As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  buttonValue = not buttonValue
		  
		  //Animate the change
		  Dim options As Integer = Ctype(ViewExtensionsXC.UIViewAnimationOptions.UIViewAnimationOptionTransitionFlipFromBottom, Integer)
		  
		  Dim duration As Double = 0.2
		  
		  ViewExtensionsXC.TransitionWithViewDurationOptionsXC(me, duration, _
		  options, _
		  new ObjCBlock(AddressOf UpdateButton))
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Caption = ""
		  me.SetImageXC(Picture.SystemImage("play.circle", 0))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ImageViewer1
	#tag Event
		Sub Opening()
		  me.Image = Picture.SystemImage("photo.fill", 160)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  
		  
		  ViewExtensionsXC.AnimateWithDurationXC(1.0, new iosblock(AddressOf UpdateImageHeight))
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rectToast
	#tag Event
		Sub Opening()
		  me.FillColor = &c0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Opening()
		  me.TextColor = &cFFFFFF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button3
	#tag Event
		Sub Pressed()
		  
		  ShowToast
		  
		  
		  //Hide the toast in 3 seconds
		  timer.CallLater 3000, AddressOf Hidetoast
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button4
	#tag Event
		Sub Opening()
		  me.SetBackgroundColorXC(&cFFAE3B)
		  me.CaptionColor = &cFFFFFF
		  me.SetCornerRadiusXC(40/2)
		  
		  AnimateButton()
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
#tag EndViewBehavior
