#tag Class
Protected Class XojoUnit_ControlExtensions
Inherits XojoUnitSuperClassTests
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXCTest()
		  
		  Dim lbl As new MobileLabel
		  
		  lbl.AdjustsFontSizeToFitWidthXC
		  lbl.AdjustsFontSizeToFitWidthXC(2)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 506572666F726D7320616E20416C7068612070726F706572747920616E696D6174696F6E206F766572207365636F6E6473207365636F6E64732077697468207468652073656C65637465642063757276652E
		Sub AnimateAlphaXCTest()
		  
		  Dim lbl As new MobileLabel
		  
		  lbl.AnimateAlphaXC(0.0)
		  
		  
		  #If ExtensionsXC.kUseUIKit
		    
		    
		    Assert.Pass
		    
		  #else
		    
		    Assert.Fail("This test will fail if iOSKit is not installed in the project")
		    
		    
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 466C69707320616E20694F53436F6E74726F6C206F6E2074686520686F72697A6F6E74616C206178697320666F722052544C
		Sub FlipHorizontalForRTLXCTest()
		  
		  Dim scroll As new MobileScrollableArea
		  
		  scroll.FlipHorizontalForRTLXC
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetBoundsXCTest()
		  
		  Dim bt As new MobileButton
		  
		  Dim rect As Rect = bt.GetBoundsXC
		  
		  Assert.IsNotNil(rect)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetFrameXCTest()
		  
		  Dim bt As new MobileButton
		  
		  Dim rect As Rect = bt.GetBoundsXC
		  
		  Assert.IsNotNil(rect)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverriddenMethodTest()
		  Assert.Pass "This subclass method executed as intended"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746F2074686520696E697469616C207669657720696E20746865207669657720636F6E74726F6C6C657220737461636B
		Sub PopToRootViewControllerXCTest()
		  
		  Assert.Pass("Can only be tested with a UI")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44656C6574657320616C6C20636F6E73747261696E74732066726F6D206120636F6E7461696E6572
		Sub RemoveConstraintsXCTest()
		  
		  
		  Dim cc As new MobileContainer
		  
		  Dim lbl As new MobileLabel
		  
		  cc.AddControl(lbl)
		  
		  Dim top As New iOSLayoutConstraint(lbl, _
		  iOSLayoutConstraint.AttributeTypes.Top, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  cc, _
		  iOSLayoutConstraint.AttributeTypes.Top, _
		  1, _
		  0)
		  cc.AddConstraint(top)
		  
		  cc.RemoveConstraintsXC
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320616E642072657475726E732061206E657720696D616765206F626A656374207769746820746865207370656369666965642063617020696E736574732E
		Sub ResizableTiledImageXCTest()
		  
		  Dim pic As new Picture(100, 100)
		  Dim img As Picture = pic
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets = ExtensionsXC.UIEdgeInsetMake(2, 2, 2, 2)
		  
		  Dim newImage As Picture = ImageExtensionsXC.ResizableTiledImageXC(insets, img)
		  
		  Assert.IsNotNil(newImage)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetActivityIndicatorViewStyleXCTest()
		  
		  Dim progress As new MobileProgressWheel
		  
		  progress.SetActivityIndicatorViewStyleXC(ControlExtensionsXC.UIActivityIndicatorViewStyle.gray)
		  progress.SetActivityIndicatorViewStyleXC(ControlExtensionsXC.UIActivityIndicatorViewStyle.whiteLarge)
		  progress.SetActivityIndicatorViewStyleXC(ControlExtensionsXC.UIActivityIndicatorViewStyle.white)
		  
		  Assert.Pass
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAlphaValueXCTest()
		  
		  Dim bt As new iOSButton
		  
		  
		  
		  
		  #if ExtensionsXC.kUseUIKit
		    bt.SetAlphaValueXC(0.0)
		    bt.SetAlphaValueXC(1.0)
		    
		    Assert.Pass
		  #else
		    
		    #Pragma Unused bt
		    
		    Assert.Fail("This test will fail if iOSKit is not installed in the project")
		    
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620612056696577
		Sub SetBackgroundColorXCTest()
		  
		  
		  Dim lbl As new MobileLabel
		  
		  lbl.SetBackgroundColorXC(&cFF0000)
		  lbl.SetBackgroundColorXC(&c000000FF)
		  
		  Dim cgValue As new ColorGroup(&cFF0000, &c00FF00)
		  lbl.SetBackgroundColorXC(cgValue)
		  
		  
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662074686520737769746368206261636B67726F756E64207768656E2076616C75652069732054727565
		Sub SetOnTintColorXCTest()
		  
		  Dim sw As new MobileSwitch
		  
		  sw.SetOnTintColorXC(&cFF0000)
		  sw.SetOnTintColorXC(&c000000FF)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F72206F66206120446174655069636B6572
		Sub SetTextColorXCTest()
		  
		  Dim picker As new MobileDateTimePicker
		  
		  picker.SetTextColorXC(&cFF0000)
		  picker.SetTextColorXC(&c000000FF)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E7420636F6C6F7220666F72207468652076696577
		Sub SetTintColorXCTest()
		  
		  Dim cc As new MobileContainer
		  
		  cc.setTintColorXC(&cff0000)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StretchToParentXCTest()
		  
		  Dim parent As new MobileContainer
		  
		  Dim cc As new MobileContainer
		  
		  parent.AddControl(cc)
		  
		  cc.StretchToParentXC(parent)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StretchToViewXCTest()
		  
		  Dim parent As new MobileScreen
		  
		  Dim cc As new MobileContainer
		  
		  parent.AddControl(cc)
		  
		  cc.StretchToViewXC(parent)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NotImplementedCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopTestOnFail"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
