#tag MobileScreen
Begin MobileScreen vEdgeEffect
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
   Title           =   "Edge effects (iOS 26)"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileScrollableArea scroll
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   scroll, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   scroll, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   scroll, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   scroll, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   503
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      ScrollContent   =   1733943295
      TintColor       =   
      Top             =   65
      Visible         =   True
      Width           =   320
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  Var content As ccEdgeEffect = ccEdgeEffect(scroll.Container)
		  
		  //Center the cc
		  Dim cons As iOSLayoutConstraint
		  cons = new iOSLayoutConstraint(content, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  scroll, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  1.0, 0)
		  cons.Active = True
		  scroll.AddConstraint(cons)
		  
		  
		  
		  
		  //Set a big height
		  Dim consHeight As iOSLayoutConstraint
		  consHeight = new iOSLayoutConstraint(content, _
		  iOSLayoutConstraint.AttributeTypes.Height, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  scroll, _
		  iOSLayoutConstraint.AttributeTypes.Height, _
		  1.0, 10)
		  cons.Active = True
		  scroll.AddConstraint(consHeight)
		  
		  
		  self.SetSubtitleXC("iOS 26 only")
		  
		  if ExtensionsXC.GetiOSVersionXC >= 26.0 then
		    self.Title = "Edge Effect"
		  end if
		  
		  AddHandler content.EdgeSelection, AddressOf EdgeSelection
		  
		  
		  //Adding some toolbar buttons to show the effect
		  
		  
		  Var withSpace as Boolean = False
		  Var hideShared As Boolean
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("location", 0))
		  if withSpace then
		    var flexibleSpace as MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    flexibleSpace.SetHidesSharedBackgroundXC(hideShared)
		    
		    self.Toolbar.AddButton flexibleSpace
		    
		  end if
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("number", 0))
		  if withSpace then
		    var flexibleSpace as MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    flexibleSpace.SetHidesSharedBackgroundXC(hideShared)
		    
		    self.Toolbar.AddButton flexibleSpace
		    
		  end if
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("camera", 0))
		  if withSpace then
		    var flexibleSpace as MobileToolbarButton = new MobileToolbarButton(MobileToolbarButton.Types.FlexibleSpace)
		    
		    flexibleSpace.SetHidesSharedBackgroundXC(hideShared)
		    
		    self.Toolbar.AddButton flexibleSpace
		    
		  end if
		  
		  self.Toolbar.AddButton new MobileToolbarButton(MobileToolbarButton.Types.Plain, "", Picture.SystemImage("trash", 0))
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub EdgeSelection(caller As ccEdgeEffect, istop As Boolean, type As String)
		  
		  if istop then
		    
		    //Top edge effect
		    
		    Select case type
		      
		      
		    case "automatic"
		      
		      scroll.SetTopEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.automatic)
		      
		    case "soft"
		      
		      scroll.SetTopEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.softEffect)
		      
		    case "hard"
		      
		      scroll.SetTopEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.hardEffect)
		      
		    case "hidden"
		      
		      scroll.SetTopEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.hidden)
		      
		      
		    end select
		    
		  Else
		    //Bottom
		    
		    
		    Select case type
		      
		      
		    case "automatic"
		      
		      scroll.SetBottomEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.automatic)
		      
		    case "soft"
		      
		      scroll.SetBottomEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.softEffect)
		      
		    case "hard"
		      
		      scroll.SetBottomEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.hardEffect)
		      
		    case "hidden"
		      
		      scroll.SetBottomEdgeEffectXC(ScrollViewExtensionsXC.UIScrollEdgeEffectStyle.hidden)
		      
		      
		    end select
		    
		    
		  end if
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events scroll
	#tag Event
		Sub Closing()
		  if me <> nil and me.Container <> nil then
		    
		    Var content As ccEdgeEffect = ccEdgeEffect(scroll.Container)
		    
		    RemoveHandler content.EdgeSelection, AddressOf EdgeSelection
		    
		  end if
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
