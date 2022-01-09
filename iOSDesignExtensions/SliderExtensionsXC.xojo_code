#tag Module
Protected Module SliderExtensionsXC
	#tag Method, Flags = &h0
		Sub SetMaximumTrackTintColorXC(extends slider as MobileSlider, value as Color)
		  
		  
		  
		  Dim uic As UIKit.UIColor
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  declare sub maximumTrackTintColor_ lib "UIKit.framework" selector "setMaximumTrackTintColor:" (id as ptr, UIColor as Ptr)
		  maximumTrackTintColor_(slider.Handle, uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMaximumValueImageXC(extends slider as MobileSlider, value as Picture)
		  
		  Declare sub SetMaximumValueImage_ lib "UIKit" Selector "setMaximumValueImage:" (obj as ptr, value as ptr)
		  
		  SetMaximumValueImage_(slider.Handle, value.CopyOSHandle(Picture.HandleType.iOSUIImage))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMinimumTrackTintColorXC(extends slider as MobileSlider, value as Color)
		  
		  
		  
		  Dim uic As UIKit.UIColor
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  declare sub minimumTrackTintColor_ lib "UIKit.framework" selector "setMinimumTrackTintColor:" (id as ptr, UIColor as Ptr)
		  minimumTrackTintColor_(slider.Handle, uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMinimumValueImageXC(extends slider as MobileSlider, value as Picture)
		  
		  Declare sub SetMinimumValueImage_ lib "UIKit" Selector "setMinimumValueImage:" (obj as ptr, value as ptr)
		  
		  SetMinimumValueImage_(slider.Handle, value.CopyOSHandle(Picture.HandleType.iOSUIImage))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetThumbTintColorXC(extends slider As MobileSlider, value As Color)
		  
		  
		  
		  Dim uic As UIKit.UIColor
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  declare sub thumbTintColor_ lib "UIKit.framework" selector "setThumbTintColor:" (id as ptr, UIColor as Ptr)
		  thumbTintColor_(slider.Handle, uic)
		End Sub
	#tag EndMethod


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
