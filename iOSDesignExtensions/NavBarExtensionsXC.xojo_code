#tag Module
Protected Module NavBarExtensionsXC
	#tag Method, Flags = &h0
		Sub SetHidesBackButtonXC(extends v As MobileScreen, value As Boolean)
		  
		  
		  
		  
		  Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		  Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		  
		  if navItem = nil then Return
		  
		  
		  Declare Sub hidesBackButton Lib "UIKit.framework" selector "setHidesBackButton:" (obj_id As ptr, value As Boolean)
		  hidesBackButton(navItem, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E64696361746573207768657468657220746865206170702068696465732074686520696E74656772617465642073656172636820626172207768656E207363726F6C6C696E6720616E7920756E6465726C79696E6720636F6E74656E742E0A44656661756C742069732054727565
		Sub SetHidesSearchBarWhenScrollingXC(extends v As MobileScreen, value As Boolean)
		  Declare Function navigationItem Lib "UIKit" _
		  Selector "navigationItem" (vc As Ptr) As Ptr
		  Dim navItem As Ptr = navigationItem(v.ViewControllerHandle)
		  
		  if navItem = nil then Return
		  
		  // Disable hiding (search bar always visible)
		  Declare Sub setHidesSearchBarWhenScrolling Lib "UIKit" _
		  Selector "setHidesSearchBarWhenScrolling:" (navItem As Ptr, hides As Boolean)
		  setHidesSearchBarWhenScrolling(navItem, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLargeSubtitleXC(extends v As MobileScreen, subtitle As String)
		  
		  
		  
		  Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		  Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		  
		  Declare Sub setLargeSubtitle Lib "UIKit.framework" Selector "setLargeSubtitle:" (obj As Ptr, value As CFStringRef)
		  
		  
		  
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  If navItem = Nil Then Return
		  Dim sel As Ptr = NSSelectorFromString("setLargeSubtitle:")
		  
		  
		  
		  If respondsToSelector(navItem, sel) Then
		    setLargeSubtitle(navItem, subtitle)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Deprecated = "Use Xojo LargeTitle instead" )  Sub SetLargeTitleDisplayModeXC(extends v As MobileScreen, mode As ViewExtensionsXC.LargeTitleDisplayMode)
		  
		  
		  Static sSystemVersion As Double
		  
		  //Get sSystemVersion only once
		  If sSystemVersion = 0.0 Then
		    
		    Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		    Declare Function currentDevice_ Lib "UIKit.framework" selector "currentDevice" (clsRef As ptr) As ptr
		    Declare Function systemversion_ Lib "UIKit.framework" selector "systemVersion" (obj_id As ptr) As CFStringRef
		    Dim device As Ptr = currentDevice_(NSClassFromString("UIDevice"))
		    Dim systemVersion As String = systemversion_(device)
		    
		    Try
		      sSystemVersion = Double.FromString(systemVersion)
		    Catch
		    End Try
		    
		  End If
		  
		  //Use new API
		  If sSystemVersion >= 11.0 Then
		    
		    'Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		    
		    'Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		    'Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		    
		    'Dim navBar As ptr = navigationBar(navigationControllerRef)
		    
		    Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		    Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		    
		    
		    Declare Sub largeTitleDisplayMode Lib "UIKit.framework" selector "setLargeTitleDisplayMode:" (obj_id As ptr, value As ViewExtensionsXC.LargeTitleDisplayMode)
		    largeTitleDisplayMode(navItem, mode)
		    
		  Else
		    
		    
		    
		    //Nothing
		    'Break
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 537472696E6720746F206265207573656420617320746865206C61726765207469746C652E
		Sub SetLargeTitleXC(extends v As MobileScreen, title As String)
		  
		  
		  
		  Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		  Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		  
		  Declare Sub setLargeTitle Lib "UIKit.framework" Selector "setLargeTitle:" (obj As Ptr, value As CFStringRef)
		  
		  
		  
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  If navItem = Nil Then Return
		  Dim sel As Ptr = NSSelectorFromString("setLargeTitle:")
		  
		  
		  
		  If respondsToSelector(navItem, sel) Then
		    setLargeTitle(navItem, title)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 412073696E676C65206C696E65206F662074657874207468617420646973706C6179732061742074686520746F70206F6620746865206E617669676174696F6E206261722E
		Sub SetPromptXC(extends v As MobileScreen, prompt As String)
		  
		  
		  
		  Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		  Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		  
		  Declare Sub setPrompt Lib "UIKit.framework" Selector "setPrompt:" (obj As Ptr, value As CFStringRef)
		  
		  
		  
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  If navItem = Nil Then Return
		  Dim sel As Ptr = NSSelectorFromString("setPrompt:")
		  
		  
		  
		  If respondsToSelector(navItem, sel) Then
		    if prompt.IsEmpty then
		      setPrompt(navItem, nil)
		    else
		      setPrompt(navItem, prompt)
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSubtitleXC(extends v As MobileScreen, subtitle As String)
		  
		  
		  
		  Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		  Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		  
		  Declare Sub setSubtitle Lib "UIKit.framework" Selector "setSubtitle:" (obj As Ptr, value As CFStringRef)
		  
		  
		  
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  If navItem = Nil Then Return
		  Dim sel As Ptr = NSSelectorFromString("setSubtitle:")
		  
		  
		  
		  If respondsToSelector(navItem, sel) Then
		    setSubtitle(navItem, subtitle)
		  End If
		  
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
