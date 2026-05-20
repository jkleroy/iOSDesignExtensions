#tag Class
Protected Class UIPageControlXC
Inherits iOSMobileUserControl
	#tag Event
		Function CreateView() As Ptr
		  #if DebugBuild
		    System.DebugLog CurrentMethodName
		  #endif
		  
		  MakeDelegateClass()
		  
		  Declare Function init Lib "Foundation" Selector "init" (cls As Ptr) As Ptr
		  declare function initWithFrame lib "UIKit" selector "initWithFrame:" (obj_id as ptr, frame as ExtensionsXC.xcCGRect) as ptr
		  
		  declare function alloc lib "UIKit" selector "alloc" (clsRef as ptr) as ptr
		  
		  dim frame as ExtensionsXC.xcCGRect = ExtensionsXC.CGRectMake(0, 0, 100, 100)
		  'frame.origin.x = 0
		  'frame.origin.y = 0
		  'frame.rsize.w = 100
		  'frame.rsize.h = 100
		  
		  'dim selfRef as ptr = initWithFrame(alloc(ClassRef), frame)
		  dim selfRef as ptr = init(alloc(ClassRef))
		  
		  
		  mObj = selfRef
		  
		  
		  'dim target as ptr = init(alloc(TargetClass))
		  '
		  'if dispatch = nil then dispatch = New Dictionary
		  'dispatch.Value(selfRef) = new WeakRef(self)
		  '
		  'declare sub addTarget lib "UIKit" selector "addTarget:action:forControlEvents:" (obj_id as ptr, target as ptr, action as ptr, events as Integer)
		  '
		  'addTarget(selfRef, Target, NSSelectorFromString("action:"), UIControlEventValueChanged)
		  '
		  
		  
		  
		  // - (void) addTarget:(id) target action:(SEL) action forControlEvents:(UIControlEvents) controlEvents;
		  Declare Sub addTarget_action_forControlEvents Lib "Foundation" Selector "addTarget:action:forControlEvents:" ( obj As Ptr , target As Ptr , action As Ptr , controlEvents  As Integer )
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  const UIControlEventValueChanged = 4096
		  addTarget_action_forControlEvents(mObj, mCallbackObjPtr, NSSelectorFromString("action:"), UIControlEventValueChanged)
		  
		  return mObj
		  
		  
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  static ref as ptr = NSClassFromString("UIPageControl")
		  return ref
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CurrentPageIndicatorTintColor(assigns value As color)
		  declare sub currentPageIndicatorTintColor_ lib "UIKit" selector "setCurrentPageIndicatorTintColor:" (obj_id as ptr, value as ptr)
		  
		  
		  Dim uic As ptr = ExtensionsXC.UIColorFromColor(value)
		  
		  
		  currentPageIndicatorTintColor_(self.Handle, uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetInstanceFromCache(obj as ptr, byref ctrl as UIPageControlXC) As boolean
		  If mLookupCache = Nil Then 
		    Return False
		  End If
		  
		  If mLookupCache.HasKey(obj) = False Then
		    Return False
		  End If
		  
		  ctrl = mLookupCache.Lookup(obj, Nil)
		  If ctrl = Nil Then
		    Return False
		  End If
		  
		  return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandleAction()
		  
		  RaiseEvent ValueChanged()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_action(sender as ptr, sel as ptr, obj as ptr)
		  
		  'Declare function description_ lib "UIKit" Selector "description" (obj as ptr) as CFStringRef
		  '
		  'System.DebugLog description_(sender)
		  ''System.DebugLog description_(sel)
		  'System.DebugLog description_(obj)
		  
		  Dim cls As UIPageControlXC
		  If GetInstanceFromCache(sender, cls) Then
		    cls.HandleAction()
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MakeDelegateClass()
		  If mCallbackObj = Nil Then
		    mCallbackObj = New ObjC.ObjCClass("UIPageControlXC")
		    
		    mCallbackObj.AddMethod("action:", AddressOf impl_action, "v@:@")
		    
		  End If
		  
		  If mLookupCache = Nil Then
		    mLookupCache = New Dictionary
		  End If
		  
		  mCallbackObjPtr = mCallbackObj.Register(true)
		  mLookupCache.Value(mCallbackObjPtr) = Self
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageIndicatorTintColor(assigns value As color)
		  
		  // @property (nonatomic, strong) UIColor * pageIndicatorTintColor;
		  
		  Declare Sub setPageIndicatorTintColor_ Lib "Foundation" selector "setPageIndicatorTintColor:" (obj as ptr, value as Ptr)
		  
		  Dim uic As ptr = ExtensionsXC.UIColorFromColor(value)
		  
		  
		  
		  setPageIndicatorTintColor_(self.Handle, uic)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ValueChanged()
	#tag EndHook


	#tag Note, Name = Incomplete
		
		
		TODO
		
		size: https://developer.apple.com/reference/uikit/uipagecontrol
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, assign) UIPageControlBackgroundStyle backgroundStyle;
			  Declare Function getBackgroundStyle Lib "Foundation" selector "backgroundStyle" (obj as ptr) As UIPageControlBackgroundStyle
			  
			  
			  Return getBackgroundStyle(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setBackgroundStyle Lib "Foundation" selector "setBackgroundStyle:" (obj as ptr, value as UIPageControlBackgroundStyle)
			  
			  setBackgroundStyle(self.Handle, value)
			End Set
		#tag EndSetter
		backgroundStyle As UIPageControlBackgroundStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function currentPage_ lib "UIKit" selector "currentPage" (obj_id as ptr) as Integer
			  Return currentPage_(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub currentPage_ lib "UIKit" selector "setCurrentPage:" (obj_id as ptr, value as Integer)
			  currentPage_(self.Handle, value)
			End Set
		#tag EndSetter
		currentPage As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  // @property (nonatomic) BOOL hidesForSinglePage;
			  
			  Declare Sub setHidesForSinglePage Lib "Foundation" selector "setHidesForSinglePage:" (obj as ptr, value as Boolean)
			  
			  setHidesForSinglePage(self.Handle, value)
			End Set
		#tag EndSetter
		hidesForSinglePage As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared mCallbackObj As Objc.ObjCClass
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCallbackObjPtr As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mLookupCache As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mObj As Ptr
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  declare function numberOfPages_ lib "UIKit" selector "numberOfPages" (obj_id as ptr) as Integer
			  Return numberOfPages_(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  declare sub numberOfPages_ lib "UIKit" selector "setNumberOfPages:" (obj_id as ptr, value as Integer)
			  numberOfPages_(self.Handle, value)
			End Set
		#tag EndSetter
		numberOfPages As Integer
	#tag EndComputedProperty


	#tag Enum, Name = UIPageControlBackgroundStyle, Type = Integer, Flags = &h0
		Automatic 
		  Prominent
		Minimal
	#tag EndEnum


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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="150"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currentPage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numberOfPages"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="hidesForSinglePage"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="_ClosingFired"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="TintColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
