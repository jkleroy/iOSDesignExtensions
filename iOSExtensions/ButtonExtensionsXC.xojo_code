#tag Module
Protected Module ButtonExtensionsXC
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXC(extends bt As iOSButton, lines As Integer = -1)
		  
		  Dim label As ptr
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  If lines > 0 Then
		    Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		    setNumberOfLines label, lines
		  End If
		  
		  Declare Sub setAdjustsFontSizeToFitWidth Lib "UIKit.framework" selector "setAdjustsFontSizeToFitWidth:" (id As ptr, value As Boolean)
		  setAdjustsFontSizeToFitWidth label, True
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackdropXC(extends bt As iOSButton, backdrop as iOSImage)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setBackgroundImage Lib "UIKit" selector "setBackgroundImage:forState:" (obj As ptr, value As ptr, state As Integer)
		  setBackgroundImage(bt.Handle, backdrop.Handle, 0)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundColorXC(Extends bt As iOSButton, value As color)
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function colorWithRGBA Lib "UIKit.framework" Selector "colorWithRed:green:blue:alpha:" ( UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  Declare Function view Lib "UIKit.framework" Selector "view" (UIViewController As Ptr) As Ptr
		  Declare Sub setBackgroundColor Lib "UIKit.framework" Selector "setBackgroundColor:" (UIView As Ptr, UIColor As Ptr)
		  
		  Dim UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  Dim colorPtr As ptr = colorWithRGBA(UIColorClassPtr, (value.red / 255.0), (value.Green / 255.0), (value.Blue / 255.0), (1.0-value.Alpha/255.0))
		  Dim viewPtr As Ptr = bt.Handle
		  SetBackgroundColor(viewPtr, colorPtr)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderColorXC(extends bt As iOSButton, value As Color)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(bt.Handle)
		  
		  Dim uic As UIKit.UIColor
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If 
		  
		  declare sub setBorderColor lib "UIKit.framework" selector "setBorderColor:" (obj_id as ptr, col as ptr)
		  setBorderColor(layer, uic.CGColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderWidthXC(extends bt As iOSButton, value As Double)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(bt.Handle)
		  
		  
		  Declare Sub setBorderWidth Lib "UIKit.framework" selector "setBorderWidth:" (obj_id As ptr, st As CGFloat)
		  setBorderWidth(layer, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonInsetsXC(extends bt As iOSButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  Declare Sub setContentEdgeInsets Lib "UIKit.framework" selector "setContentEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setContentEdgeInsets (bt.handle, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonTiledBackgroundXC(extends bt As iOSButton, img As iOSImage)
		  
		  
		  
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets
		  insets.Left = 12
		  insets.Top = 12
		  insets.Bottom = 12
		  insets.Right = 12
		  
		  Dim resizedImg as iOSImage
		  
		  resizedImg = ResizableTiledImageXC(insets, img)
		  
		  
		  bt.SetBackdropXC(resizedImg)
		  
		  bt.SetButtonInsetsXC(insets)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCornerRadiusXC(extends bt As iOSButton, radius As Double)
		  
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(bt.Handle)
		  
		  
		  
		  Declare Sub setCornerRadius Lib "QuartzCore.framework" selector "setCornerRadius:" (id As ptr, value As CGFloat)
		  
		  setCornerRadius layer, radius
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets
		  insets.Left = radius
		  insets.Top = 0
		  insets.Right = radius
		  insets.Bottom = 0
		  
		  bt.SetButtonInsetsXC(insets)
		  
		  
		  
		  
		  ' yourButton.layer.cornerRadius = 10; // this value vary as per your desire
		  '    yourButton.clipsToBounds = YES;
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageInsetsXC(extends bt As iOSButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  
		  Declare Sub setImageEdgeInsets Lib "UIKit.framework" selector "setImageEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setImageEdgeInsets (bt.handle, value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageXC(extends bt As iOSButton, image As iOSImage, state As ControlExtensionsXC.UIControlState=ControlExtensionsXC.UIControlState.normal)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setImage Lib "UIKit.framework" selector "setImage:forState:" (obj As ptr, value As ptr, state As ControlExtensionsXC.UIControlState)
		  
		  If image Is Nil Then
		    setImage(bt.Handle, Nil, state)
		  Else
		    setImage(bt.Handle, image.Handle, state)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineBreakModeXC(extends bt As iOSButton, mode As ControlExtensionsXC.NSLineBreakMode)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  Declare Sub setLineBreakMode Lib "UIKit.framework" selector "setLineBreakMode:" (id As ptr, value As ControlExtensionsXC.NSLineBreakMode)
		  setLineBreakMode label, mode
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNumberOfLinesXC(extends bt As iOSButton, lines As Integer)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  
		  
		  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
		  'setTextAlignment(label, NSTextAlignment.center)
		  
		  Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		  setNumberOfLines label, lines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTextAlignmentXC(extends bt As iOSButton, alignment As ControlExtensionsXC.NSTextAlignment)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  
		  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
		  setTextAlignment(label, alignment)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleEdgeInsetsXC(extends bt As iOSButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  Declare Sub setTitleEdgeInsets_ Lib "UIKit.framework" selector "setTitleEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setTitleEdgeInsets_ (bt.handle, value)
		  
		End Sub
	#tag EndMethod


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
