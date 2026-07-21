#tag MobileScreen
Begin MobileScreen Screen4
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
   Title           =   "Popover"
   Top             =   0
   _mTabBarVisible =   False
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 4, 1, 119, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      BackgroundColor =   
      BorderColor     =   
      BorderWidth     =   0
      Caption         =   "Button"
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
      Top             =   119
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AdjustTextSizeToFit=   False
      Alignment       =   0
      AutoLayout      =   Label1, 3, <Parent>, 3, False, +1.00, 4, 1, 241, , True
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 37, , True
      AutoLayout      =   Label1, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   37
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Untitled"
      TextColor       =   cgIndigo
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   
      Top             =   241
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  Dim tb As new MobileToolbarButton(MobileToolbarButton.Types.Trash)
		  
		  self.Toolbar.AddButton tb
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarButtonPressed(button As MobileToolbarButton)
		  
		  Dim v As new Screen4
		  v.HasNavigationBar = False
		  
		  'v.ShowModal(self, ModalPresentationStyles.Popover)
		  
		  v.ShowPopover(button, true)
		  
		  Declare function description_ lib "UIKit" Selector "description" (obj as ptr) as CFStringRef
		  
		  
		  // Get the underlying UIViewController for v
		  Dim vc As Ptr = v.ViewControllerHandle
		  
		  System.DebugLog description_(vc)
		  
		  if vc = nil then Break
		  
		  // Get the popoverPresentationController
		  Declare Function popoverPresentationController Lib "UIKit" Selector "popoverPresentationController" (obj As Ptr) As Ptr
		  Dim ppc As Ptr = popoverPresentationController(vc)
		  
		  System.DebugLog description_(ppc)
		  
		  // @property (nonatomic, weak) id<UIPopoverPresentationControllerDelegate> delegate;
		  Declare Function getDelegate Lib "Foundation" selector "delegate" (obj as ptr) as Ptr
		  Declare Sub setDelegate Lib "Foundation" Selector "setDelegate:" (obj as ptr, value as Ptr)
		  
		  var del as ptr = getDelegate(ppc)
		  
		  System.DebugLog description_(del)
		  
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  
		  
		  Dim sel As Ptr = NSSelectorFromString("adaptivePresentationStyleForPresentationController:")
		  Dim responds As Boolean = respondsToSelector(del, sel)
		  
		  if not responds then
		    System.DebugLog("Responds: " + responds.ToString)
		    
		    Declare Function class_addMethod Lib "/usr/lib/libobjc.A.dylib" (cls As Ptr, name As Ptr, imp As Ptr, types As CString) As Boolean
		    
		    
		    declare function object_getClass lib "/usr/lib/libobjc.A.dylib" (cls As Ptr) As Ptr
		    
		    Dim cls As Ptr = object_getClass(del)
		    
		    // Type encoding: NSInteger return, id self, SEL _cmd, id pc
		    // "l@:@" on 32-bit, "q@:@" on 64-bit (iOS is always 64-bit now)
		    if not class_addMethod(cls, sel, AddressOf AdaptivePresentationStyle, "q@:@") then
		      Break
		    end if
		  end if
		  
		  
		  
		  // Set permittedArrowDirections to .any (0xFFFFFFFF)
		  Declare Sub setPermittedArrowDirections Lib "UIKit" Selector "setPermittedArrowDirections:" (obj As Ptr, directions As UInteger)
		  setPermittedArrowDirections(ppc, 15)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Shared Function AdaptivePresentationStyle(obj As Ptr, sel As Ptr, pc As Ptr) As Integer
		  
		  Return -1
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  
		  Dim v As new Screen4
		  v.HasNavigationBar = False
		  
		  'v.ShowModal(self, ModalPresentationStyles.
		  
		  v.ShowPopover(me)
		  
		  Return
		  
		  Declare function description_ lib "UIKit" Selector "description" (obj as ptr) as CFStringRef
		  
		  
		  // Get the underlying UIViewController for v
		  Dim vc As Ptr = v.ViewControllerHandle
		  
		  System.DebugLog description_(vc)
		  
		  if vc = nil then Break
		  
		  // Get the popoverPresentationController
		  Declare Function popoverPresentationController Lib "UIKit" Selector "popoverPresentationController" (obj As Ptr) As Ptr
		  Dim ppc As Ptr = popoverPresentationController(vc)
		  
		  System.DebugLog description_(ppc)
		  
		  // @property (nonatomic, weak) id<UIPopoverPresentationControllerDelegate> delegate;
		  Declare Function getDelegate Lib "Foundation" selector "delegate" (obj as ptr) as Ptr
		  Declare Sub setDelegate Lib "Foundation" Selector "setDelegate:" (obj as ptr, value as Ptr)
		  
		  var del as ptr = getDelegate(ppc)
		  
		  System.DebugLog description_(del)
		  
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  
		  
		  Dim sel As Ptr = NSSelectorFromString("adaptivePresentationStyleForPresentationController:")
		  Dim responds As Boolean = respondsToSelector(del, sel)
		  
		  if not responds then
		    System.DebugLog("Responds: " + responds.ToString)
		    
		    Declare Function class_addMethod Lib "/usr/lib/libobjc.A.dylib" (cls As Ptr, name As Ptr, imp As Ptr, types As CString) As Boolean
		    
		    
		    declare function object_getClass lib "/usr/lib/libobjc.A.dylib" (cls As Ptr) As Ptr
		    
		    Dim cls As Ptr = object_getClass(del)
		    
		    // Type encoding: NSInteger return, id self, SEL _cmd, id pc
		    // "l@:@" on 32-bit, "q@:@" on 64-bit (iOS is always 64-bit now)
		    if not class_addMethod(cls, sel, AddressOf AdaptivePresentationStyle, "q@:@") then
		      Break
		    end if
		  end if
		  
		  // Set permittedArrowDirections to .any (0xFFFFFFFF)
		  Declare Sub setPermittedArrowDirections Lib "UIKit" Selector "setPermittedArrowDirections:" (obj As Ptr, directions As UInteger)
		  setPermittedArrowDirections(ppc, 15)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Sub Opening()
		  me.SetSFSymbolXC("garbledmqlfksjd", "Open")
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
