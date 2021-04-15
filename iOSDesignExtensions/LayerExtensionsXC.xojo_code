#tag Module
Protected Module LayerExtensionsXC
	#tag Method, Flags = &h0
		Function GetLayerXC(extends c as MobileUIControl) As ptr
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(c.Handle)
		  
		  Return layer
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub SetBorderColorXC(extends c As MobileUIControl, value As Color)
		  
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
		Sub SetBorderWidthXC(extends c As MobileUIControl, width As Double)
		  
		  
		  Dim layer As ptr = c.GetLayerXC
		  
		  declare sub setBorderWidth lib "UIKit.framework" selector "setBorderWidth:" (obj_id as ptr, value as CGFloat)
		  setBorderWidth(layer, width)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320726F756E6420636F726E65727320746F20616E20694F53436F6E74726F6C
		Sub SetCornerRadiusXC(extends ctrl As MobileUIControl, radius As Double)
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(ctrl.Handle)
		  
		  
		  
		  Declare Sub setCornerRadius Lib "QuartzCore.framework" selector "setCornerRadius:" (id As ptr, value As CGFloat)
		  
		  setCornerRadius layer, radius
		  
		  if ctrl isa MobileButton then
		    
		    Dim insets As ExtensionsXC.xcUIEdgeInsets
		    insets.Left = radius
		    insets.Top = 0
		    insets.Right = radius
		    insets.Bottom = 0
		    
		    MobileButton(ctrl).SetButtonInsetsXC(insets)
		    
		  else
		    
		    
		    
		    Declare Sub clipsToBounds Lib "UIKit.framework" selector "setClipsToBounds:" (id As ptr, value As Boolean)
		    clipsToBounds(ctrl.Handle, True)
		    
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadowXC(extends control As MobileUIControl, ShadowColor As Color, radius As Double, offset As Point)
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(control.Handle)
		  
		  Declare Sub masksToBounds_ Lib "UIKit.framework" selector "setMasksToBounds:" (id As ptr, value As Boolean)
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
			InitialValue=""
			Type="String"
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
	#tag EndViewBehavior
End Module
#tag EndModule
