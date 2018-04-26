#tag IOSView
Begin iosView vBackground
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "View Background"
   Top             =   0
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Open()
		  
		  SetColor
		  
		  Dim tb As iOSToolButton
		  
		  tb = iOSToolButton.NewPlain("Color")
		  tb.Tag = "color"
		  Self.Toolbar.Add tb
		  
		  tb = iOSToolButton.FlexibleSpace
		  Self.Toolbar.Add tb
		  
		  tb = iOSToolButton.NewPlain("Pattern")
		  tb.Tag = "Pattern"
		  Self.Toolbar.Add tb
		End Sub
	#tag EndEvent

	#tag Event
		Sub ToolbarPressed(button As iOSToolButton)
		  
		  Select Case button.Tag
		    
		  Case "color"
		    SetColor
		    
		  Case "pattern"
		    SetPattern
		  End Select
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SetColor()
		  
		  self.SetBackgroundColorXC(&cA4FFFB00)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPattern()
		  
		  self.SetBackgroundImageXC(img_green_pattern)
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Group="Behavior"
		Type="iOSImage"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
