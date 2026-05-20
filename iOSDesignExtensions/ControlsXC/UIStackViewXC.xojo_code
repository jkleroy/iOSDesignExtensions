#tag Class
Class UIStackViewXC
Inherits iOSMobileUserControl
	#tag Event
		Function CreateView() As Ptr
		  #if DebugBuild
		    System.DebugLog CurrentMethodName
		  #endif
		  
		  'MakeDelegateClass()
		  
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
		  'Declare Sub addTarget_action_forControlEvents Lib "Foundation" Selector "addTarget:action:forControlEvents:" ( obj As Ptr , target As Ptr , action As Ptr , controlEvents  As Integer )
		  'Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  'const UIControlEventValueChanged = 4096
		  'addTarget_action_forControlEvents(mObj, mCallbackObjPtr, NSSelectorFromString("action:"), UIControlEventValueChanged)
		  
		  return mObj
		  
		  
		  
		  
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddControl(child As MobileUIControl, customSpacing As Double = 0.0, width As Double = -1.0, height As Double = -1.0)
		  // Calling the overridden superclass method.
		  'Super.AddControl(child, True)
		  
		  // - (void) addArrangedSubview:(UIView *) view;
		  Declare Sub addArrangedSubview Lib "Foundation" Selector "addArrangedSubview:" ( obj as ptr, view as ptr)
		  
		  addArrangedSubview(self.Handle, child.Handle)
		  
		  
		  
		  
		  
		  // - (void) setCustomSpacing:(CGFloat)spacing afterView:(UIView *) arrangedSubview;
		  Declare Sub setCustomSpacing_afterView Lib "Foundation" Selector "setCustomSpacing:afterView:" ( obj as ptr , spacing as CGFloat, view as ptr)
		  
		  if customSpacing <> 0.0 then
		    
		    setCustomSpacing_afterView(self.Handle, customSpacing, child.Handle)
		    
		  end if
		  
		  
		  
		  
		  if width <> -1.0 or height <> -1.0 then
		    
		    '// @property (nonatomic, readonly) CGSize intrinsicContentSize;
		    ''Declare Function getIntrinsicContentSize Lib "Foundation" selector "intrinsicContentSize" (obj as ptr) As extensionsXC.xcCGSize
		    'Declare Sub setIntrinsicContentSize Lib "Foundation" selector "setIntrinsicContentSize:" (obj as ptr, value as extensionsXC.xcCGSize)
		    '
		    'Dim sz As extensionsXC.xcCGSize
		    '
		    'sz.width = width
		    'sz.height = height
		    '
		    'setIntrinsicContentSize(child.Handle, sz)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  static ref as ptr = NSClassFromString("UIStackView")
		  return ref
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetInstanceFromCache(obj as ptr, byref ctrl as UIStackViewXC) As boolean
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
		Private Sub MakeDelegateClass()
		  
		  #if False
		    If mCallbackObj = Nil Then
		      mCallbackObj = New ObjC.ObjCClass("UIPageControlXC")
		      
		      mCallbackObj.AddMethod("action:", AddressOf impl_action, "v@:@")
		      
		    End If
		    
		    If mLookupCache = Nil Then
		      mLookupCache = New Dictionary
		    End If
		    
		    mCallbackObjPtr = mCallbackObj.Register(true)
		    mLookupCache.Value(mCallbackObjPtr) = Self
		    
		    
		  #endif
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		
		
		https://developer.apple.com/documentation/uikit/uistackview?language=objc
		
		
		
		Stack views let you leverage the power of Auto Layout,
		creating user interfaces that can dynamically adapt to the device’s orientation, screen size,
		and any changes in the available space. The stack view manages the layout of all the views in its arrangedSubviews property.
		
		These views are arranged along the stack view’s axis, based on their order in the arrangedSubviews array.
		The exact layout varies depending on the stack view’s axis, distribution, alignment, spacing, and other properties.
		
		
		
		## distribution
		
		Fill
		A layout where the stack view resizes its arranged views so that they fill the available space along the stack view’s axis.
		
		FillEqually
		A layout where the stack view resizes its arranged views so that they fill the available space along the stack view’s axis.
		
		FillProportionally
		A layout where the stack view resizes its arranged views so that they fill the available space along the stack view’s axis.
		
		EqualSpacing
		A layout where the stack view positions its arranged views so that they fill the available space along the stack view’s axis.
		
		EqualCentering
		A layout that attempts to position the arranged views with equal center-to-center spacing along the stack view’s axis, while maintaining the spacing property’s distance between views.
	#tag EndNote

	#tag Note, Name = Incomplete
		
		
		TODO
		
		size: https://developer.apple.com/reference/uikit/uipagecontrol
		
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206F662074686520617272616E6765642073756276696577732070657270656E646963756C617220746F2074686520737461636B2076696577E280997320617869732E
		#tag Getter
			Get
			  // @property (nonatomic) UIStackViewAlignment alignment;
			  Declare Function getAlignment Lib "Foundation" selector "alignment" (obj as ptr) As UIStackViewAlignment
			  
			  
			  Return getAlignment(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAlignment Lib "Foundation" selector "setAlignment:" (obj as ptr, value as UIStackViewAlignment)
			  
			  setAlignment(self.Handle, value)
			End Set
		#tag EndSetter
		alignment As UIStackViewXC.UIStackViewAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206178697320616C6F6E672077686963682074686520617272616E676564207669657773206C6179206F75742E
		#tag Getter
			Get
			  
			  Declare Function getAxis Lib "Foundation" selector "axis" (obj as ptr) As UILayoutConstraintAxis
			  
			  Return getAxis(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property (nonatomic) UILayoutConstraintAxis axis;
			  
			  Declare Sub setAxis Lib "Foundation" selector "setAxis:" (obj as ptr, value as UILayoutConstraintAxis)
			  
			  setAxis(self.Handle, value)
			End Set
		#tag EndSetter
		axis As UIStackViewXC.UILayoutConstraintAxis
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520646973747269627574696F6E206F662074686520617272616E67656420766965777320616C6F6E672074686520737461636B2076696577E280997320617869732E
		#tag Getter
			Get
			  // @property (nonatomic) UIStackViewDistribution distribution;
			  Declare Function getDistribution Lib "Foundation" selector "distribution" (obj as ptr) As UIStackViewDistribution
			  
			  Return getDistribution(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDistribution Lib "Foundation" selector "setDistribution:" (obj as ptr, value as UIStackViewDistribution)
			  
			  setDistribution(self.Handle, value)
			End Set
		#tag EndSetter
		distribution As UIStackViewDistribution
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520737461636B2076696577206C617973206F75742069747320617272616E6765642076696577732072656C617469766520746F20697473206C61796F7574206D617267696E732E
		#tag Getter
			Get
			  Declare Function getLayoutMarginsRelativeArrangement Lib "Foundation" selector "isLayoutMarginsRelativeArrangement" (obj as ptr) As Boolean
			  
			  Return getLayoutMarginsRelativeArrangement(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property (nonatomic, getter=isLayoutMarginsRelativeArrangement) BOOL layoutMarginsRelativeArrangement;
			  
			  Declare Sub setLayoutMarginsRelativeArrangement Lib "Foundation" selector "setLayoutMarginsRelativeArrangement:" (obj as ptr, value as Boolean)
			  
			  setLayoutMarginsRelativeArrangement(self.Handle, value)
			End Set
		#tag EndSetter
		LayoutMarginsRelativeArrangement As Boolean
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

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E636520696E20706F696E7473206265747765656E207468652061646A6163656E74206564676573206F662074686520737461636B2076696577E280997320617272616E6765642076696577732E
		#tag Getter
			Get
			  Declare Function getSpacing Lib "Foundation" selector "spacing" (obj as ptr) As CGFloat
			  
			  Return getSpacing(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property (nonatomic) CGFloat spacing;
			  
			  Declare Sub setSpacing Lib "Foundation" selector "setSpacing:" (obj as ptr, value as CGFloat)
			  
			  setSpacing(self.Handle, value)
			End Set
		#tag EndSetter
		spacing As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E20616C69617320666F722055494C61796F7574436F6E73747261696E74417869732E566572746963616C
		#tag Setter
			Set
			  if value then
			    self.axis = UILayoutConstraintAxis.vertical
			    
			  Else
			    
			    self.axis = UILayoutConstraintAxis.horizontal
			    
			  end if
			End Set
		#tag EndSetter
		vertical As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = UILayoutConstraintAxis, Type = Integer, Flags = &h0
		horizontal
		vertical
	#tag EndEnum

	#tag Enum, Name = UIStackViewAlignment, Type = Integer, Flags = &h0
		Fill
		  Leading
		  FirstBaseline
		  Center
		  Trailing
		  LastBaseline
		  Top = 1
		Bottom = 4
	#tag EndEnum

	#tag Enum, Name = UIStackViewDistribution, Type = Integer, Flags = &h0
		Fill
		  FillEqually
		  FillProportionally
		  EqualSpacing
		EqualCentering
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
		#tag ViewProperty
			Name="vertical"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="spacing"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayoutMarginsRelativeArrangement"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="distribution"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UIStackViewDistribution"
			EditorType="Enum"
			#tag EnumValues
				"0 - Fill"
				"1 - FillEqually"
				"2 - FillProportionally"
				"3 - EqualSpacing"
				"4 - EqualCentering"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
