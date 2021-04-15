#tag Class
Protected Class XojoUnit_ScrollViewExtensionsXC
Inherits XojoUnitSuperClassTests
	#tag Method, Flags = &h0, Description = 466C617368657320746865207363726F6C6C20696E64696361746F727320746F20696E6469636174652074686174207468697320766965772063616E206265207363726F6C6C65642E202855736520776974682061203230306D732074696D657229
		Sub FlashScrollIndicatorsXCTest()
		  
		  Dim scroll As new iOSScrollableArea
		  
		  scroll.FlashScrollIndicatorsXC
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverriddenMethodTest()
		  Assert.Pass "This subclass method executed as intended"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526574756E73207468652063757272656E74207363726F6C6C20706F736974696F6E
		Sub ScrollPositionXCTest()
		  
		  Dim scroll As new iOSScrollableArea
		  Dim offset As xojo.core.point
		  
		  offset = scroll.ScrollPositionXC
		  
		  Assert.IsTrue(offset.X=0.0 AND offset.Y=0.0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746F2074686520646566696E656420636F6F7264696E61746573
		Sub ScrollToXCTest()
		  
		  
		  Dim scroll As new iOSScrollableArea
		  
		  Dim animated As Boolean = False
		  scroll.ScrollToXC(new Xojo.Core.Point(1.0, 1.0), animated)
		  
		  animated = True
		  scroll.ScrollToXC(new Xojo.Core.Point(10.0, 10.0), animated)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBouncesXCTest()
		  
		  
		  Dim scroll As new iOSScrollableArea
		  
		  scroll.SetBouncesXC(True)
		  scroll.SetBouncesXC(False)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetIndicatorStyleXCTest()
		  
		  
		  Dim scroll As new iOSScrollableArea
		  scroll.SetIndicatorStyleXC(ScrollViewExtensionsXC.UIScrollViewIndicatorStyle.black)
		  scroll.SetIndicatorStyleXC(ScrollViewExtensionsXC.UIScrollViewIndicatorStyle.white)
		  scroll.SetIndicatorStyleXC(ScrollViewExtensionsXC.UIScrollViewIndicatorStyle.default)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4966207468652076616C7565206F6620746869732070726F706572747920697320547275652C20746865207363726F6C6C20766965772073746F7073206F6E206D756C7469706C6573206F6620746865207363726F6C6C2076696577E280997320626F756E6473207768656E207468652075736572207363726F6C6C732E
		Sub SetPagingEnabledXCTest()
		  
		  Dim scroll As new iOSScrollableArea
		  scroll.SetPagingEnabledXC(True)
		  scroll.SetPagingEnabledXC(False)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollEnabledXCTest()
		  
		  
		  Dim scroll As new iOSScrollableArea
		  scroll.SetScrollEnabledXC(True)
		  scroll.SetScrollEnabledXC(False)
		  
		  Assert.Pass
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E657320696620746865205363726F6C6C76696577207363726F6C6C7320746F2074686520746F70207768656E20646F75626C652074617070696E67207468652074696D6520696E64696361746F722E
		Sub SetScrollsToTopXC()
		  
		  Dim scroll As new iOSScrollableArea
		  scroll.SetScrollsToTopXC(True)
		  scroll.SetScrollsToTopXC(False)
		  
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
