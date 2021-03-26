#tag Class
Protected Class XojoUnit_ExtensionsXC
Inherits XojoUnitSuperClassTests
	#tag Method, Flags = &h0
		Sub CGRectMakeTest()
		  
		  Dim rct As ExtensionsXC.xcCGRect = ExtensionsXC.CGRectMake(1.0, 1.0, 1.0, 1.0)
		  
		  Assert.IsTrue(rct.origin.x=1.0 AND rct.origin.y=1.0 AND rct.rsize.width=1.0 AND rct.rsize.height=1.0)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetiOSVersionXCTest()
		  
		  
		  Dim version As Double = ExtensionsXC.GetiOSVersionXC
		  Dim otherValue As Double = 0.0
		  
		  Assert.AreNotEqual(version, otherValue)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadConstantXCTest()
		  
		  Dim openSettingsURL As ptr = ExtensionsXC.LoadConstantXC("UIKit", "UIApplicationOpenSettingsURLString")
		  
		  
		  Assert.AreEqual("app-settings:", openSettingsURL.CFStringRef(0))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFrameworkXCTest()
		  
		  
		  Dim frameworkPtr As ptr = ExtensionsXC.LoadFrameworkXC("UIKit")
		  
		  Assert.IsTrue(frameworkPtr <> nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OverriddenMethodTest()
		  Assert.Pass "This subclass method executed as intended"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StringConstantXCTest()
		  
		  
		  Dim constStr As Text = ExtensionsXC.StringConstantXC("UIKit", "NSForegroundColorAttributeName")
		  
		  Assert.AreDifferent(constStr, "")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UIEdgeInsetMake()
		  
		  
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets = ExtensionsXC.UIEdgeInsetMake(1.0, 2.0, 3.0, 4.0)
		  
		  Assert.IsTrue(insets.Top=1.0 AND insets.Left=2.0  AND insets.Bottom=3.0 AND insets.Right=4.0)
		  
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
