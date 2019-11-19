#tag IOSView
Begin iosView vHTMLViewer
   BackButtonTitle =   ""
   Compatibility   =   ""
   LargeTitleMode  =   "2"
   Left            =   0
   NavigationBarVisible=   True
   TabIcon         =   ""
   TabTitle        =   ""
   Title           =   "HTMLViewer"
   Top             =   0
   Begin iOSHTMLViewer HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 4, <Parent>, 4, False, +1.00, 4, 1, -50, , True
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   HTMLViewer1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   HTMLViewer1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      Height          =   365.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      Top             =   65
      Visible         =   True
      Width           =   320.0
   End
   Begin iOSButton btLoad
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btLoad, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btLoad, 7, , 0, False, +1.00, 4, 1, 80, , True
      AutoLayout      =   btLoad, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btLoad, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      Caption         =   "Load Page"
      Enabled         =   True
      Height          =   30.0
      Left            =   120
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   80.0
   End
   Begin Xojo.Core.Timer Timer1
      Left            =   0
      LockedInPosition=   False
      Mode            =   "0"
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   2000
      Scope           =   2
      Tolerance       =   0
      Top             =   0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub JSResult(value As Auto, error As RuntimeException)
		  gotresult = True
		  If error <> Nil Then
		    
		    Break
		    //There was an error
		    Return
		  End If
		  
		  Dim msg As New iOSMessageBox
		  msg.Buttons = Array("OK")
		  msg.Title = "Result"
		  msg.Message = value
		  msg.Show
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private gotResult As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		loaded As Boolean
	#tag EndProperty


	#tag Constant, Name = kHTML, Type = Text, Dynamic = False, Default = \"<!doctype html>\n<html>\n  <head>\n    <title>This is the title of the webpage!</title>\n  <style>\nbody{\nfont-size: 200%;\n-webkit-text-size-adjust: 200%;\n}\n</style>\n  </head>\n  <body>\n    <div id\x3D\"123\">This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page\x2C just like this <strong>p</strong> tag and its contents.</div>\n<script>\nfunction getBrowserTitle()\n{\n  var newTitle \x3D document.title;\n//  alert(\"newTitle \x3D \" + newTitle);\n  return newTitle;\n};\n</script>\n  </body>\n</html>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kJSPie, Type = Text, Dynamic = False, Default = \"var Pi\x3D0;\nvar n\x3D1;\nfor (i\x3D0;i<\x3D10000;i++)\n{\nPi\x3DPi+(4/n)-(4/(n+2))\nn\x3Dn+4\n}\nPi;", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events btLoad
	#tag Event
		Sub Action()
		  
		  HTMLViewer1.loadPageXC(kHTML)
		  
		  loaded = True
		  timer1.Mode = xojo.core.timer.Modes.Multiple
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer1
	#tag Event
		Sub Action()
		  if gotResult then
		    me.Mode = xojo.core.timer.Modes.Off
		    Return
		  end if
		  
		  // Get current browser title
		  'dim js as text = "document.title"
		  dim js As text = "getBrowserTitle();"
		  // try to get the document.title property via js, once
		  call HTMLViewer1.ExecuteJavascriptXC(js, weakAddressOf JSResult)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="LargeTitleMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackButtonTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType="MultiLineEditor"
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
		Name="NavigationBarVisible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Name="TabIcon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="iOSImage"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="loaded"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
