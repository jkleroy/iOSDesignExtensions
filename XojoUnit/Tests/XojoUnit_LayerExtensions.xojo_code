#tag Class
Protected Class XojoUnit_LayerExtensions
Inherits XojoUnitSuperClassTests
	#tag Method, Flags = &h0
		Sub GetLayerXCTest()
		  
		  Dim cc As new iOSContainerControl
		  
		  Dim layer As ptr = cc.GetLayerXC
		  
		  Assert.IsTrue(layer <> nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverriddenMethodTest()
		  Assert.Pass "This subclass method executed as intended"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub SetBorderColorXCTest()
		  
		  Dim cc As new iOSContainerControl
		  
		  cc.SetBorderColorXC(&cFF0000)
		  cc.SetBorderColorXC(&c000000FF)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub SetBorderWidthXCTest()
		  
		  Dim cc As new iOSContainerControl
		  
		  cc.SetBorderWidthXC(0.0)
		  cc.SetBorderWidthXC(2.0)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320726F756E6420636F726E65727320746F20616E20694F53436F6E74726F6C
		Sub SetCornerRadiusXCTest()
		  
		  Dim cc As new iOSContainerControl
		  
		  cc.SetCornerRadiusXC(0.0)
		  cc.SetCornerRadiusXC(2.0)
		  
		  Dim bt As new iOSButton
		  bt.SetCornerRadiusXC(0.0)
		  bt.SetCornerRadiusXC(8.0)
		  
		  Assert.Pass
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetShadowXCTest()
		  
		  Dim cc As new iOSContainerControl
		  
		  cc.SetShadowXC(&c0, -1.0, new Xojo.Core.Point(0, 0))
		  cc.SetShadowXC(&c0, 2.0, new Xojo.Core.Point(0, 2))
		  
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
