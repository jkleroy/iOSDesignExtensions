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
      AutoLayout      =   HTMLViewer1, 4, btLoad, 3, False, +1.00, 4, 1, 0, , True
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
      AutoLayout      =   btLoad, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      AutoLayout      =   btLoad, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btLoad, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   btLoad, 7, , 0, False, +1.00, 4, 1, 80, , True
      Caption         =   "Load Page"
      Enabled         =   True
      Height          =   30.0
      Left            =   20
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   80.0
   End
   Begin iOSButton btUserAgent
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btUserAgent, 4, btLoad, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btUserAgent, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btUserAgent, 1, btLoad, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btUserAgent, 7, , 0, False, +1.00, 4, 1, 80, , True
      Caption         =   "UserAgent"
      Enabled         =   True
      Height          =   30.0
      Left            =   108
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   80.0
   End
   Begin iOSButton btJavascript
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btJavascript, 4, btLoad, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btJavascript, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btJavascript, 1, btUserAgent, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btJavascript, 7, , 0, False, +1.00, 4, 1, 80, , True
      Caption         =   "Exec Javascript"
      Enabled         =   True
      Height          =   30.0
      Left            =   196
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   80.0
   End
   Begin iOSButton btCalcPi
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   btCalcPi, 10, btLoad, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   btCalcPi, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   btCalcPi, 1, btJavascript, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   btCalcPi, 7, , 0, False, +1.00, 4, 1, 20, , True
      Caption         =   "Pi"
      Enabled         =   True
      Height          =   30.0
      Left            =   284
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   430
      Visible         =   True
      Width           =   20.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub PiResult(value As Auto, error As RuntimeException)
		  
		  If error <> Nil Then
		    
		    Dim reason As Text = error.Reason
		    
		    Break
		    Return
		  End If
		  
		  
		  
		  Dim res As Double = value
		  
		  Dim msg As New iOSMessageBox
		  msg.Buttons = Array("OK")
		  msg.Title = "Calculated Pi"
		  msg.Message = res.ToText(locale.Current, "0.00000000000")
		  msg.Show
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UserAgentResult(value As Auto, error As RuntimeException)
		  
		  If error <> Nil Then
		    
		    Break
		    //There was an error
		    Return
		  End If
		  
		  Dim msg As New iOSMessageBox
		  msg.Buttons = Array("OK")
		  msg.Title = "UserAgent"
		  msg.Message = value
		  msg.Show
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		loaded As Boolean
	#tag EndProperty


	#tag Constant, Name = kHTML, Type = Text, Dynamic = False, Default = \"<!doctype html>\n<html>\n  <head>\n    <title>This is the title of the webpage!</title>\n  <style>\nbody{\nfont-size: 200%;\n-webkit-text-size-adjust: 200%;\n}\n</style>\n  </head>\n  <body>\n    <div id\x3D\"123\">This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page\x2C just like this <strong>p</strong> tag and its contents.</div>\n  </body>\n</html>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kJSPie, Type = Text, Dynamic = False, Default = \"var Pi\x3D0;\nvar n\x3D1;\nfor (i\x3D0;i<\x3D1000;i++)\n{\nPi\x3DPi+(4/n)-(4/(n+2))\nn\x3Dn+4\n}\nPi;", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events btLoad
	#tag Event
		Sub Action()
		  
		  HTMLViewer1.loadPageXC(kHTML)
		  
		  loaded = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btUserAgent
	#tag Event
		Sub Action()
		  
		  #If XojoVersion < 2018.02
		    Dim agent As Text = HTMLViewer1.UserAgentXC
		    
		    Dim msg As New iOSMessageBox
		    msg.Buttons = Array("OK")
		    msg.Title = "UserAgent"
		    msg.Message = agent
		    msg.Show
		    
		    
		  #Else
		    
		    Call HTMLViewer1.UserAgentXC( WeakAddressOf UserAgentResult )
		    
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btJavascript
	#tag Event
		Sub Action()
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
#tag Events btCalcPi
	#tag Event
		Sub Action()
		  
		  //Calculating Pi using Javascript
		  
		  
		  Dim js As Text = kJSPie
		  
		  Call HTMLViewer1.ExecuteJavascriptXC(js, WeakAddressOf PiResult)
		  
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
	#tag ViewProperty
		Name="loaded"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
