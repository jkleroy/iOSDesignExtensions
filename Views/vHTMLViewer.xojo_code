#tag MobileScreen
Begin MobileScreen vHTMLViewer
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   0
   Title           =   "HTMLViewer"
   Top             =   0
   Begin MobileHTMLViewer HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   HTMLViewer1, 4, btLoad, 3, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   HTMLViewer1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   HTMLViewer1, 2, <Parent>, 2, False, +1.00, 4, 1, -0, , True
      AutoLayout      =   HTMLViewer1, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   453
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   ""
      Top             =   65
      Visible         =   True
      Width           =   320
   End
   Begin MobileButton btLoad
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btLoad, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      AutoLayout      =   btLoad, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btLoad, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   btLoad, 7, , 0, False, +1.00, 4, 1, 80, , True
      Caption         =   "Load Page"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   518
      Visible         =   True
      Width           =   80
   End
   Begin MobileButton btCalcPi
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btCalcPi, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   btCalcPi, 7, , 0, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   btCalcPi, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btCalcPi, 10, btLoad, 10, False, +1.00, 4, 1, 0, , True
      Caption         =   "Pi"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   280
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   518
      Visible         =   True
      Width           =   20
   End
   Begin MobileButton btJavascript
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btJavascript, 2, btCalcPi, 1, False, +1.00, 4, 1, -*kStdControlGapH, , True
      AutoLayout      =   btJavascript, 7, , 0, False, +1.00, 4, 1, 80, , True
      AutoLayout      =   btJavascript, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btJavascript, 4, btLoad, 4, False, +1.00, 4, 1, 0, , True
      Caption         =   "Exec Javascript"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   192
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   518
      Visible         =   True
      Width           =   80
   End
   Begin MobileButton btUserAgent
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btUserAgent, 1, btLoad, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btUserAgent, 7, , 0, False, +1.00, 4, 1, 80, , True
      AutoLayout      =   btUserAgent, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btUserAgent, 10, btLoad, 10, False, +1.00, 4, 1, 0, , True
      Caption         =   "UserAgent"
      CaptionColor    =   &c000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   108
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   518
      Visible         =   True
      Width           =   80
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub PiResult(value As Auto, error As RuntimeException)
		  
		  If error <> Nil Then
		    
		    Dim reason As Text
		    reason = error.Reason
		    
		    Break
		    Return
		  End If
		  
		  
		  
		  Dim res As Double = value
		  
		  Dim msg As New MobileMessageBox
		  msg.Buttons = Array("OK")
		  msg.Title = "Calculated Pi"
		  msg.Message = res.ToString(Locale.Current, "0.00000000000")
		  msg.Show
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UserAgentResult(value As Auto, error As RuntimeException)
		  gotresult = True
		  If error <> Nil Then
		    
		    Break
		    //There was an error
		    Return
		  End If
		  
		  Dim msg As New MobileMessageBox
		  msg.Buttons = Array("OK")
		  msg.Title = "UserAgent"
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


	#tag Constant, Name = kHTML, Type = Text, Dynamic = False, Default = \"<!doctype html>\n<html>\n  <head>\n    <title>This is the title of the webpage!</title>\n  <style>\nbody{\nfont-size: 200%;\n-webkit-text-size-adjust: 200%;\n}\n</style>\n  </head>\n  <body>\n    <div id\x3D\"123\">This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page\x2C just like this <strong>p</strong> tag and its contents.</div>\n<script>\nfunction getBrowserTitle()\n{\n  var newTitle \x3D document.title;\n//  alert(\"newTitle \x3D \" + newTitle);\n  return newTitle;\n}\n</script>\n  </body>\n</html>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kJSPie, Type = Text, Dynamic = False, Default = \"var Pi\x3D0;\nvar n\x3D1;\nfor (i\x3D0;i<\x3D10000;i++)\n{\nPi\x3DPi+(4/n)-(4/(n+2))\nn\x3Dn+4\n}\nPi;", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events btLoad
	#tag Event
		Sub Pressed()
		  HTMLViewer1.loadPageXC(kHTML)
		  
		  loaded = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btCalcPi
	#tag Event
		Sub Pressed()
		  
		  //Calculating Pi using Javascript
		  
		  
		  Dim js As String = kJSPie
		  
		  Call HTMLViewer1.ExecuteJavascriptXC(js, WeakAddressOf PiResult)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btJavascript
	#tag Event
		Sub Pressed()
		  If Not loaded Then
		    Dim msg As New iOSMessageBox
		    msg.Buttons = Array("OK")
		    msg.Title = "Error"
		    msg.Message = "First tap on Load Page button"
		    msg.Show
		    Return
		  End If
		  
		  Static index As Integer
		  
		  Select Case index
		    
		  Case 0
		    Call HTMLViewer1.ExecuteJavascriptXC("document.body.style.color = ""magenta"";")
		  Case 1
		    Call HTMLViewer1.ExecuteJavascriptXC("document.body.style.color = ""blue"";")
		    
		  Case 2
		    
		    Call HTMLViewer1.ExecuteJavascriptXC("document.body.style.color = ""red"";")
		    
		  End Select
		  
		  index = (index+1) Mod 3
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btUserAgent
	#tag Event
		Sub Pressed()
		  
		  
		  
		  HTMLViewer1.UserAgentXC( WeakAddressOf UserAgentResult )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="TabIcon"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
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
