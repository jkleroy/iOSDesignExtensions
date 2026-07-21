#tag MobileScreen
Begin MobileScreen Screen11
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
   TintColor       =   &c000000
   Title           =   "Untitled"
   Top             =   0
   _mTabBarVisible =   False
   Begin ControlsXC.UIPageControlXC PageControl
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   PageControl, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   PageControl, 7, , 0, False, +1.00, 4, 1, 150, , True
      AutoLayout      =   PageControl, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   PageControl, 8, , 0, False, +1.00, 4, 1, 30, , True
      backgroundStyle =   ""
      ControlCount    =   0
      currentPage     =   0
      Enabled         =   True
      Height          =   30
      hidesForSinglePage=   False
      Left            =   112
      LockedInPosition=   False
      numberOfPages   =   0
      Scope           =   0
      TintColor       =   
      Top             =   73
      Visible         =   True
      Width           =   150
      _ClosingFired   =   False
   End
   Begin ControlsXC.UIStackViewXC VerticalStackView
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   VerticalStackView, 8, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   VerticalStackView, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   VerticalStackView, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   VerticalStackView, 3, btAlignment, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      ControlCount    =   0
      distribution    =   ""
      Enabled         =   True
      Height          =   100
      LayoutMarginsRelativeArrangement=   False
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      spacing         =   0.0
      TintColor       =   
      Top             =   197
      vertical        =   False
      Visible         =   True
      Width           =   375
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btDistribution
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btDistribution, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   btDistribution, 7, , 0, False, +1.00, 4, 1, 130, , True
      AutoLayout      =   btDistribution, 3, PageControl, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btDistribution, 8, , 0, False, +1.00, 4, 1, 35, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   ""
      CaptionColor    =   &c000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   35
      highlightedXC   =   False
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   0
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      toolTipXC       =   ""
      Top             =   111
      Visible         =   True
      Width           =   130
      _ClosingFired   =   False
   End
   Begin ControlsXC.MobileButtonXC btAlignment
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   btAlignment, 1, btDistribution, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btAlignment, 7, , 0, False, +1.00, 4, 1, 130, , True
      AutoLayout      =   btAlignment, 3, btDistribution, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   btAlignment, 8, , 0, False, +1.00, 4, 1, 35, , True
      BackgroundColor =   
      BorderColor     =   
      borderColorXC   =   &c00000000
      BorderWidth     =   0
      borderWidthXC   =   0.0
      buttonTypeXC    =   0
      Caption         =   ""
      CaptionColor    =   &c000000
      changesSelectionAsPrimaryAction=   False
      ControlCount    =   0
      CornerSize      =   0
      Enabled         =   True
      Height          =   35
      highlightedXC   =   False
      Icon            =   0
      Left            =   20
      LockedInPosition=   False
      numberOfLinesXC =   0
      Scope           =   0
      selectedXC      =   False
      showsMenuAsPrimaryAction=   False
      symbolAnimationEnabledXC=   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      toolTipXC       =   ""
      Top             =   154
      Visible         =   True
      Width           =   130
      _ClosingFired   =   False
   End
   Begin ControlsXC.UIStackViewXC HorizontalStack
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HorizontalStack, 8, , 0, False, +1.00, 4, 1, 195, , True
      AutoLayout      =   HorizontalStack, 1, VerticalStackView, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   HorizontalStack, 3, VerticalStackView, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   HorizontalStack, 7, <Parent>, 7, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      distribution    =   ""
      Enabled         =   True
      Height          =   195
      LayoutMarginsRelativeArrangement=   False
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      spacing         =   0.0
      TintColor       =   
      Top             =   305
      vertical        =   False
      Visible         =   True
      Width           =   375
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  /////////////////
		  // Reveal
		  /////////////////
		  #If DebugBuild And App.UseRevealServer 'and not TargetMobileDevice
		    Soft Declare Function IBARevealLoggerGetLevelMask Lib "@executable_path/Frameworks/RevealServer.framework/RevealServer" () As Integer
		    Dim res As Integer
		    res = IBARevealLoggerGetLevelMask()
		    res = res
		    
		  #EndIf
		  
		  
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events PageControl
	#tag Event
		Sub Opening()
		  me.Visible = True
		  
		  me.numberOfPages = 5
		  me.currentPage = 2
		  
		  'me.TintColor = &cFF0000
		  
		  me.currentPageIndicatorTintColor = &c0
		  
		  me.SetBackgroundColorXC(color.AccentThemeColor)
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events VerticalStackView
	#tag Event
		Sub Opening()
		  
		  me.spacing = 18.0
		  me.vertical = True
		  me.alignment = UIStackViewXC.UIStackViewAlignment.Center
		  
		  me.LayoutMarginsRelativeArrangement = True
		  
		  me.SetDirectionalLayoutMarginsXC(ExtensionsXC.NSDirectionalEdgeInsetsMake(0, 20, 0, 20))
		  
		  me.SetBackgroundColorXC(&c0000FFD0)
		  
		  
		  Dim hstack As new UIStackViewXC
		  hstack.vertical = False
		  
		  me.AddControl(hstack)
		  
		  Dim img As new MobileImageViewer
		  img.Image = Picture.SystemImage("person.crop.circle", 0)
		  img.DisplayMode = MobileImageViewer.DisplayModes.ScaleAspectFit
		  hstack.AddControl(img, 5)
		  
		  Dim lbl As new MobileLabel
		  lbl.Text = "Label 1"
		  
		  hstack.AddControl(lbl, 50)
		  
		  lbl = new MobileLabel
		  lbl.Text = "Another label"
		  hstack.AddControl(lbl)
		  hstack.alignment = UIStackViewXC.UIStackViewAlignment.Leading
		  
		  lbl = new MobileLabel
		  lbl.Text = "This property determines how the stack view lays out its arranged views perpendicularly to its axis. The default value is UIStackViewAlignmentFill. For a list of possible values, see UIStackViewAlignment."
		  
		  me.AddControl(lbl, 80)
		  
		  Dim cc As new MobileContainer
		  cc.SetBackgroundColorXC(&cFF0000)
		  
		  me.AddControl(cc)
		  
		  lbl = new MobileLabel
		  lbl.Text = "Label 3"
		  me.AddControl(lbl)
		  
		  'me.AddControl(Button1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btDistribution
	#tag Event
		Sub SelectionChanged(action as UIActionXC)
		  
		  Select case action.title
		    
		  Case "fill"
		    
		    VerticalStackView.distribution = UIStackViewXC.UIStackViewDistribution.Fill
		    
		  Case "FillEqually"
		    VerticalStackView.distribution = UIStackViewXC.UIStackViewDistribution.FillEqually
		    
		  Case "FillProportionally"
		    VerticalStackView.distribution = UIStackViewXC.UIStackViewDistribution.FillProportionally
		    
		  case "EqualCentering"
		    VerticalStackView.distribution = UIStackViewXC.UIStackViewDistribution.EqualCentering
		    
		  Case "EqualSpacing"
		    VerticalStackView.distribution = UIStackViewXC.UIStackViewDistribution.EqualSpacing
		    
		  Else
		    Break
		    
		  End Select
		  
		  HorizontalStack.distribution = VerticalStackView.distribution
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  
		  me.Caption = "Distribution"
		  
		  me.configurationXC = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.gray)
		  
		  //Create the actions displayed in the menu
		  Dim actions() as UIActionXC
		  
		  actions.add me.CreateAction("Fill")
		  actions.add me.CreateAction("FillEqually")
		  actions.add me.CreateAction("FillProportionally")
		  actions.add me.CreateAction("EqualSpacing")
		  actions.add me.CreateAction("EqualCentering")
		  
		  //Set the menu
		  me.SetMenu("Select distribution", actions)
		  
		  
		  me.showsMenuAsPrimaryAction = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btAlignment
	#tag Event
		Sub SelectionChanged(action as UIActionXC)
		  
		  Select case action.title
		    
		  Case "fill"
		    
		    VerticalStackView.alignment = UIStackViewXC.UIStackViewAlignment.Fill
		    
		  Case "Leading"
		    VerticalStackView.alignment = UIStackViewXC.UIStackViewAlignment.Leading
		    
		  Case "FirstBaseline"
		    VerticalStackView.alignment = UIStackViewXC.UIStackViewAlignment.FirstBaseline
		    
		  case "Center"
		    VerticalStackView.alignment = UIStackViewXC.UIStackViewAlignment.Center
		    
		  Case "Trailing"
		    VerticalStackView.alignment = UIStackViewXC.UIStackViewAlignment.Trailing
		    
		  Case "LastBaseline"
		    VerticalStackView.alignment = UIStackViewXC.UIStackViewAlignment.LastBaseline
		    
		  Else
		    Break
		    
		  End Select
		  
		  HorizontalStack.alignment = VerticalStackView.alignment
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  
		  me.Caption = "Alignment"
		  
		  me.configurationXC = UIButtonConfiguration.GetConfiguration(UIButtonConfiguration.Types.gray)
		  
		  //Create the actions displayed in the menu
		  Dim actions() as UIActionXC
		  
		  actions.add me.CreateAction("Fill")
		  actions.add me.CreateAction("Leading")
		  actions.add me.CreateAction("FirstBaseline")
		  actions.add me.CreateAction("Center")
		  actions.add me.CreateAction("Trailing")
		  actions.add me.CreateAction("LastBaseline")
		  
		  //Set the menu
		  me.SetMenu("Select Alignment", actions)
		  
		  
		  me.showsMenuAsPrimaryAction = True
		  me.changesSelectionAsPrimaryAction = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HorizontalStack
	#tag Event
		Sub Opening()
		  
		  me.spacing = 10
		  me.vertical = False
		  me.alignment = UIStackViewXC.UIStackViewAlignment.Center
		  
		  me.LayoutMarginsRelativeArrangement = True
		  
		  me.SetDirectionalLayoutMarginsXC(ExtensionsXC.NSDirectionalEdgeInsetsMake(0, 20, 0, 20))
		  
		  me.SetBackgroundColorXC(&c0000FFD0)
		  
		  
		  Dim img As new MobileImageViewer
		  img.Image = Picture.SystemImage("person.crop.circle", 0)
		  img.DisplayMode = MobileImageViewer.DisplayModes.ScaleAspectFit
		  me.AddControl(img, 5)
		  
		  Dim lbl As new MobileLabel
		  lbl.Text = "Label 1"
		  
		  me.AddControl(lbl, 10)
		  
		  
		  
		  lbl = new MobileLabel
		  lbl.Text = "This property determines how the stack view lays out its arranged views perpendicularly"
		  
		  me.AddControl(lbl, 10)
		  
		  
		  
		  lbl = new MobileLabel
		  lbl.Text = "Label 3"
		  me.AddControl(lbl)
		  
		  'me.AddControl(Button1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
#tag EndViewBehavior
