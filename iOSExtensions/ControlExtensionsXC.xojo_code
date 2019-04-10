#tag Module
Protected Module ControlExtensionsXC
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXC(extends label As iOSLabel, lines As Integer = -1)
		  
		  label.LineBreakMode = iOSLineBreakMode.BreakByTruncatingTail
		  
		  If lines > 0 Then
		    Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		    setNumberOfLines label.handle, lines
		  End If
		  
		  
		  Declare sub setAdjustsFontSizeToFitWidth lib "UIKit.framework" selector "setAdjustsFontSizeToFitWidth:" (id as ptr, value as Boolean)
		  setAdjustsFontSizeToFitWidth label.handle, True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320616E20416C7068612070726F706572747920616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E
		Sub AnimateAlphaXC(extends ctrl as iOSControl, newAlpha as double, duration as double = 0.2, completion as iOSBlock = nil)
		  
		  #If ExtensionsXC.kUseUIKit
		    
		    Dim v As New UIView(ctrl.Handle)
		    v.AnimateAlpha newalpha, duration, completion
		    
		  #else
		    #Pragma Unused ctrl
		    #Pragma Unused newalpha
		    #Pragma Unused duration
		    #Pragma Unused completion
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBoundsXC(extends c as iOSControl) As xojo.Core.Rect
		  
		  
		  'Declare Function view_ Lib "UIKit.framework" selector "view" (controlHandle As ptr) As Ptr
		  Declare Function bounds Lib "UIKit.framework" selector "bounds" (obj_id As Ptr) As ExtensionsXC.xcCGRect
		  
		  'Dim view As Ptr = view_(c.handle)
		  
		  
		  
		  Dim re As ExtensionsXC.xcCGRect = bounds(c.handle)
		  
		  
		  Return New xojo.Core.Rect(re.origin.x, re.origin.y, re.rsize.width, re.rsize.height)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFrameXC(extends c as iOSControl) As xojo.Core.Rect
		  
		  Dim viewRef As ptr = c.Handle
		  
		  Declare Function frame Lib "UIKit.framework" selector "frame" (obj_id As Ptr) As ExtensionsXC.xcCGRect
		  
		  Dim re As ExtensionsXC.xcCGRect = frame(viewRef)
		  
		  
		  Return New xojo.Core.Rect(re.origin.x, re.origin.y, re.rsize.width, re.rsize.height)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746F2074686520696E697469616C207669657720696E20746865207669657720636F6E74726F6C6C657220737461636B
		Sub PopToRootViewControllerXC(extends v As iOSView, animated As Boolean = true)
		  
		  //Reference to Navigation Controller
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  
		  declare function popToRootViewController_ lib "UIKit.framework" selector "popToRootViewControllerAnimated:" (obj_ref as ptr, aniamted As Boolean) as ptr
		  
		  
		  call popToRootViewController_(navigationControllerRef, animated)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44656C6574657320616C6C20636F6E73747261696E74732066726F6D206120636F6E7461696E6572
		Sub RemoveConstraintsXC(containerHandle as ptr)
		  // http://stackoverflow.com/questions/13388104/remove-auto-layout-constraints-for-specific-object
		  '[detailsPhotoView removeConstraints:detailsPhotoView.constraints];
		  
		  
		  
		  Declare sub removeConstraints lib "UIKit.framework" selector "removeConstraints:" (obj_id as ptr, constraints as ptr)
		  Declare function constraints lib "UIKit.framework" selector "constraints" (obj_id as ptr) as ptr
		  
		  dim ctrs As ptr = constraints(containerHandle)
		  
		  removeConstraints(containerHandle, ctrs)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720696D616765206F626A656374207769746820746865207370656369666965642063617020696E736574732E
		Function ResizableTiledImageXC(CapInsets As ExtensionsXC.xcUIEdgeInsets, img As iOSImage) As iOSImage
		  
		  Declare Function resizableImageWithCapInsets Lib "UIKit.framework" selector "resizableImageWithCapInsets:" (id As ptr, insets As ExtensionsXC.xcUIEdgeInsets) As ptr
		  Return iOSImage.FromHandle (resizableImageWithCapInsets(img.handle, CapInsets))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetActivityIndicatorViewStyleXC(extends progress As iOSProgressWheel, value As UIActivityIndicatorViewStyle)
		  
		  
		  declare sub setActivityIndicatorViewStyle lib "UIKit.framework" selector "setActivityIndicatorViewStyle:" (id as ptr, value as UIActivityIndicatorViewStyle)
		  setActivityIndicatorViewStyle progress.Handle, value
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAlphaValueXC(extends ctrl As iOSControl, value As Double)
		  
		  
		  
		  
		  #if ExtensionsXC.kUseUIKit
		    //Following code works with any version of iOS
		    Dim v As new UIKit.UIView(ctrl.handle)
		    v.alpha = value
		    
		  #else
		    #Pragma Unused ctrl
		    #Pragma Unused value
		    
		    
		    break
		    //Following code does not work with iOS 12.2 anymore
		    'Declare Sub setAlphaValue Lib "UIKit.framework" selector "setAlpha:" (id As ptr, value As CGFloat)
		    '
		    'setAlphaValue ctrl.handle, value
		    
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620612056696577
		Sub SetBackgroundColorXC(extends ctrl As iOSControl, value As Color)
		  
		  
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  else
		    uic = New UIKit.UIColor(value)
		  end if
		  
		  
		  
		  Declare Sub decl_SetBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' Here is the corresponding Xojo call
		  decl_SetBackgroundColor(ctrl.handle, uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit))
		Sub SetCornersRadiusXC(extends view As UIKit.UIView, corners As Integer, radius As Double)
		  #If Not DebugBuild
		    
		    // Create the path (with only the top-left corner rounded)
		    'UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:imageView.bounds 
		    'byRoundingCorners:UIRectCornerTopLeft
		    'cornerRadii:CGSizeMake(10.0, 10.0)];
		    
		    // Create the shape layer and set its path
		    'CAShapeLayer *maskLayer = [CAShapeLayer layer];
		    'maskLayer.frame = imageView.bounds;
		    'maskLayer.path = maskPath.CGPath;
		    
		    // Set the newly created shape layer as the mask for the image view's layer
		    'imageView.layer.mask = maskLayer;
		    
		    Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		    Declare Function bezierPathWithRoundedRect Lib "UIKit.framework" selector "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:" _
		    (cls_ref as ptr, bounds as CGRect, corners as Integer, radius as CGSize) as ptr
		    
		    
		    
		    
		    Dim radSize As CGSize
		    radSize.width = radius
		    radSize.height = radius
		    
		    Dim bounds As Xojo.Core.Rect = view.bounds
		    Dim boundRect As CGRect = CGRectMake(bounds.left, bounds.Top, bounds.Width, bounds.Height)
		    
		    Dim maskPath As Ptr
		    maskPath = bezierPathWithRoundedRect(Foundation.NSClassFromString("UIBezierPath"), _
		    boundRect, corners, radSize)
		    
		    Dim maskLayer As Ptr
		    maskLayer = layer_(NSClassFromString("CAShapeLayer"))
		    
		    Declare Sub setFrame_ Lib "UIKit.framework" selector "setFrame:" (obj_id As ptr, frame As CGRect)
		    setFrame_(maskLayer, boundRect)
		    
		    Declare Sub setPath_ Lib "UIKit.framework" selector "setPath:" (obj_id As ptr, path As ptr)
		    Declare function CGPath_ lib "UIKit.framework" selector "CGPath" (obj_id as ptr) as ptr
		    setPath_(maskLayer, CGPath_(maskPath))
		    
		    
		    Dim layer As ptr = layer_(view.id)
		    
		    Declare Sub setMask Lib "UIKit.framework" selector "setMask:" (obj_id As ptr, mask As ptr)
		    setMask(layer, maskLayer)
		    
		    Declare Sub masksToBounds_ Lib "UIKit.framework" selector "setMasksToBounds:" (id As ptr, value As Boolean)
		    'masksToBounds_(layer, False)
		    
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662074686520737769746368206261636B67726F756E64207768656E2076616C75652069732054727565
		Sub SetOnTintColorXC(extends s As iOSSwitch, value As Color)
		  
		  
		  'declare sub setTintColor lib "UIKit.framework" selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  'setTintColor s.Handle, new UIColor(c)
		  
		  Dim uic As UIKit.UIColor
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  declare sub setOnTintColor lib "UIKit.framework" selector "setOnTintColor:" (id as ptr, UIColor as Ptr)
		  setOnTintColor(s.Handle, uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E7420636F6C6F7220666F72207468652076696577
		Sub SetTintColorXC(extends handle As ptr, c As Color)
		  
		  
		  declare sub setTintColor lib "UIKit.framework" selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  setTintColor Handle, new UIColor(c)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StretchToParentXC(extends c As iOSControl, parentView As iOSControl)
		  
		  
		  
		  Dim cons As iOSLayoutConstraint
		  
		  //Top
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.top, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.Top, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		  
		  
		  //Left
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.left, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.left, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		  
		  //Right
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.Right, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.Right, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		  
		  
		  //Bottom
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.Bottom, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.Bottom, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StretchToViewXC(extends c As iOSControl, parentView As iOSView)
		  
		  Dim cons As iOSLayoutConstraint
		  
		  //Top
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.top, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.Top, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		  
		  
		  //Left
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.left, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.left, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		  
		  //Right
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.Right, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.Right, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		  
		  
		  //Bottom
		  cons = new iOSLayoutConstraint(c, _
		  iOSLayoutConstraint.AttributeTypes.Bottom, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  parentView, _
		  iOSLayoutConstraint.AttributeTypes.Bottom, _
		  1, _
		  0)
		  cons.Active = True
		  parentView.AddConstraint(cons)
		End Sub
	#tag EndMethod


	#tag Enum, Name = NSLineBreakMode, Type = Integer, Flags = &h1
		WordWrap = 0
		  CharacterWrap
		  Clip
		  TruncateHead
		  TruncateTail
		TruncateMiddle
	#tag EndEnum

	#tag Enum, Name = NSTextAlignment, Type = Integer, Flags = &h1
		left = 0
		  center
		  right
		  justified
		natural
	#tag EndEnum

	#tag Enum, Name = UIActivityIndicatorViewStyle, Type = Integer, Flags = &h1
		whiteLarge
		  white
		gray
	#tag EndEnum

	#tag Enum, Name = UIControlState, Type = Integer, Flags = &h1
		normal
		  highlighted
		  disabled
		  selected
		focused
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationCurve, Type = Integer, Flags = &h1
		EaseInEaseOut
		  EaseIn
		  EaseOut
		  Linear
		Keyboard = 7
	#tag EndEnum

	#tag Enum, Name = UIVIewAnimationTransition, Type = Integer, Flags = &h1
		None
		  FlipFromLeft
		  FlipFromRight
		  CurlUp
		  CurlDown
		  CrossDissolve
		  FlipFromTop
		FlipFromBottom
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
