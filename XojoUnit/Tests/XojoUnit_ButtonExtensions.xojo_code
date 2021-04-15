#tag Class
Protected Class XojoUnit_ButtonExtensions
Inherits XojoUnitSuperClassTests
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXCTest()
		  
		  Dim bt As new MobileButton
		  bt.Caption = "One very long caption"
		  
		  bt.AdjustsFontSizeToFitWidthXC
		  bt.AdjustsFontSizeToFitWidthXC(2)
		  
		  Assert.Pass(CurrentMethodName)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverriddenMethodTest()
		  Assert.Pass "This subclass method executed as intended"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackdropXCTest()
		  
		  Dim bt As new MobileButton
		  
		  
		  
		  Dim pic As new Picture(100, 100)
		  Dim g As Graphics = pic.Graphics
		  g.DrawingColor = &cFF0000
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  dim img As Picture = Picture.FromData(pic.ToData(Picture.Formats.PNG))
		  
		  img = Picture.FromHandle(pic.CopyOSHandle(Picture.HandleType.iOSUIImage))
		  
		  bt.SetBackdropXC(img)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundColorXCTest()
		  
		  Dim bt As new MobileButton
		  
		  Dim value As color = &cFF0000
		  
		  bt.SetBackgroundColorXC(value)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderColorXCTest()
		  
		  Dim bt As new MobileButton
		  
		  bt.SetBorderColorXC(&cFF0000)
		  
		  bt.SetBorderColorXC(&c000000FF)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderWidthXCTest()
		  
		  Dim bt As new MobileButton
		  
		  bt.SetBorderWidthXC(2.0)
		  
		  bt.SetBorderWidthXC(-1.0)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonInsetsXCTest()
		  Dim bt As new MobileButton
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets = ExtensionsXC.UIEdgeInsetMake(2, 0, 2, 0)
		  
		  bt.SetButtonInsetsXC(insets)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonTiledBackgroundXC()
		  
		  Dim bt As new MobileButton
		  
		  Dim img As new Picture(100, 100)
		  
		  
		  bt.SetButtonTiledBackgroundXC(img)
		  
		  Assert.Pass
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageInsetsXCTest()
		  
		  Dim bt As new MobileButton
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets = ExtensionsXC.UIEdgeInsetMake(2, 0, 2, 0)
		  
		  bt.SetImageInsetsXC(insets)
		  
		  Assert.Pass
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageXCTest()
		  
		  Dim bt As new MobileButton
		  
		  
		  
		  Dim img As new Picture(100, 100)
		  
		  
		  bt.SetImageXC(img)
		  bt.SetImageXC(img, ControlExtensionsXC.UIControlState.disabled)
		  bt.SetImageXC(img, ControlExtensionsXC.UIControlState.focused)
		  bt.SetImageXC(img, ControlExtensionsXC.UIControlState.highlighted)
		  bt.SetImageXC(img, ControlExtensionsXC.UIControlState.normal)
		  bt.SetImageXC(img, ControlExtensionsXC.UIControlState.selected)
		  
		  bt.SetImageXC(nil)
		  
		  Assert.Pass
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineBreakModeXCTest()
		  
		  Dim bt As new MobileButton
		  
		  bt.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.CharacterWrap)
		  bt.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.Clip)
		  bt.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.TruncateHead)
		  bt.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.TruncateMiddle)
		  bt.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.TruncateTail)
		  bt.SetLineBreakModeXC(ControlExtensionsXC.NSLineBreakMode.WordWrap)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNumberOfLinesXCTest()
		  
		  Dim bt As new MobileButton
		  
		  bt.Caption = "One very long caption"
		  
		  bt.SetNumberOfLinesXC(-1)
		  bt.SetNumberOfLinesXC(0)
		  bt.SetNumberOfLinesXC(1)
		  bt.SetNumberOfLinesXC(2)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRoleXC()
		  
		  Dim bt As new MobileButton
		  
		  
		  bt.SetRoleXC(ButtonExtensionsXC.UIButtonRole.normal)
		  bt.SetRoleXC(ButtonExtensionsXC.UIButtonRole.cancel)
		  bt.SetRoleXC(ButtonExtensionsXC.UIButtonRole.primary)
		  bt.SetRoleXC(ButtonExtensionsXC.UIButtonRole.destructive)
		  
		  Assert.Pass
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTextAlignmentXCTest()
		  
		  Dim bt As new MobileButton
		  
		  bt.Caption = "One very long caption"
		  
		  bt.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.center)
		  bt.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.justified)
		  bt.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.left)
		  bt.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.natural)
		  bt.SetTextAlignmentXC(ControlExtensionsXC.NSTextAlignment.right)
		  
		  Assert.Pass
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleEdgeInsetsXCTest()
		  
		  Dim bt As new MobileButton
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets = ExtensionsXC.UIEdgeInsetMake(2, 0, 2, 0)
		  
		  bt.SetTitleEdgeInsetsXC(insets)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod


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
