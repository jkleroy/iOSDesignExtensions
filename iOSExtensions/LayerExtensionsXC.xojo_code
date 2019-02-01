#tag Module
Protected Module LayerExtensionsXC
	#tag Method, Flags = &h0
		Function GetLayerXC(extends c as iOSControl) As ptr
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(c.Handle)
		  
		  Return layer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub SetBorderColorXC(extends c As iOSControl, value As Color)
		  
		  Dim layer as ptr = c.GetLayerXC
		  
		  Dim uic As uikit.uicolor 
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If 
		  
		  declare sub setBorderColor lib "UIKit.framework" selector "setBorderColor:" (obj_id as ptr, col as ptr)
		  setBorderColor(layer, uic.CGColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub SetBorderWidthXC(extends c As iOSControl, width As Double)
		  
		  
		  Dim layer As ptr = c.GetLayerXC
		  
		  declare sub setBorderWidth lib "UIKit.framework" selector "setBorderWidth:" (obj_id as ptr, value as CGFloat)
		  setBorderWidth(layer, width)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320726F756E6420636F726E65727320746F206120436F6E7461696E6572436F6E74726F6C
		Sub SetCornerRadiusXC(extends lbl As iOSLabel, radius As Double)
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(lbl.Handle)
		  
		  
		  
		  Declare Sub setCornerRadius Lib "QuartzCore.framework" selector "setCornerRadius:" (id As ptr, value As CGFloat)
		  
		  setCornerRadius layer, radius
		  
		  Declare Sub clipsToBounds Lib "UIKit.framework" selector "setClipsToBounds:" (id As ptr, value As Boolean)
		  clipsToBounds(lbl.Handle, True)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadowXC(extends cc As iOSControl, ShadowColor As Color, radius As Double, offset As Xojo.Core.Point)
		  
		  Declare Function layer_ Lib UIKitLib selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(cc.Handle)
		  
		  Declare Sub masksToBounds_ Lib UIKitLib selector "setMasksToBounds:" (id As ptr, value As Boolean)
		  masksToBounds_(layer, False)
		  
		  Declare Sub shadowColor_ Lib QuartzCoreLib selector "setShadowColor:" (id As ptr, col As ptr)
		  Dim c As new UIColor(ShadowColor)
		  shadowColor_(layer, c.CGColor)
		  
		  
		  
		  Declare Sub shadowRadius_ Lib QuartzCoreLib selector "setShadowRadius:" (id As ptr, col As CGFloat)
		  shadowRadius_(layer, radius)
		  
		  
		  
		  Dim size As ExtensionsXC.xcCGSize
		  
		  size.width = offset.X
		  size.height = offset.y
		  
		  Declare Sub shadowOffset_ Lib QuartzCoreLib selector "setShadowOffset:" (id As ptr, sz As ExtensionsXC.xcCGSize)
		  shadowOffset_(layer, size)
		  
		  Declare function opac lib QuartzCoreLib selector "shadowOpacity" (id as ptr) as CGFloat
		  dim v As Double = opac(layer)
		  v = v
		  
		  
		  Declare Sub shadowOpacity_ Lib QuartzCoreLib selector "setShadowOpacity:" (id As ptr, col As single)
		  shadowOpacity_(layer, 1.0)
		End Sub
	#tag EndMethod


	#tag Constant, Name = QuartzCoreLib, Type = Text, Dynamic = False, Default = \"Quartzcore.framework", Scope = Protected
	#tag EndConstant


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