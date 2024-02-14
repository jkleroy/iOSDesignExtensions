#tag Module
Protected Module SplitViewExtensionsXC
	#tag Method, Flags = &h0, Description = 52657475726E73206120426F6F6C65616E2076616C7565207468617420696E646963617465732077686574686572206F6E6C79206F6E65206F6620746865206368696C64207669657720636F6E74726F6C6C65727320646973706C6179732E
		Function IsCollapsedXC(Extends scr As iOSSplitView) As Boolean
		  //Changes the SplitView in portrait mode
		  
		  Declare function isCollapsed Lib "UIKit" _
		  selector "setPreferredDisplayMode:" (obj As Ptr) as Boolean
		  
		  Return isCollapsed(scr.ViewControllerHandle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDisplayModeXC(Extends scr As iOSSplitView, mode As SplitViewExtensionsXC.UISplitViewControllerDisplayMode)
		  //Changes the SplitView in portrait mode
		  
		  Declare Sub setPreferredDisplayMode Lib "UIKit" _
		  selector "setPreferredDisplayMode:" (obj As Ptr, mode As UISplitViewControllerDisplayMode)
		  
		  setPreferredDisplayMode(scr.ViewControllerHandle, mode)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D6178696D756D2077696474682C20696E20706F696E74732C20666F7220746865207072696D617279207669657720636F6E74726F6C6C6572E280997320636F6E74656E742E
		Sub SetMaximumPrimaryColumnWidthXC(Extends scr as iOSSplitView, width as Double)
		  Declare Sub setMaximumPrimaryColumnWidth Lib "UIKit" _
		  selector "setMaximumPrimaryColumnWidth:" (obj As Ptr, width as Double)
		  
		  setMaximumPrimaryColumnWidth(scr.ViewControllerHandle, width)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206D696E696D756D2077696474682C20696E20706F696E74732C20666F7220746865207072696D617279207669657720636F6E74726F6C6C6572E280997320636F6E74656E742E
		Sub SetMinimumPrimaryColumnWidthXC(Extends scr as iOSSplitView, width as Double)
		  Declare Sub setMinimumPrimaryColumnWidth Lib "UIKit" _
		  selector "setMinimumPrimaryColumnWidth:" (obj As Ptr, width as Double)
		  
		  setMinimumPrimaryColumnWidth(scr.ViewControllerHandle, width)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652072656C6174697665207769647468206F6620746865207072696D617279207669657720636F6E74726F6C6C6572E280997320636F6E74656E742E
		Sub SetPreferredPrimaryColumnWidthFractionXC(Extends scr as iOSSplitView, fraction as Double)
		  Declare Sub setPreferredPrimaryColumnWidthFraction Lib "UIKit" _
		  selector "setPreferredPrimaryColumnWidthFraction:" (obj As Ptr, fraction as CGFloat)
		  
		  setPreferredPrimaryColumnWidthFraction(scr.ViewControllerHandle, fraction)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206261636B67726F756E64207374796C65206F6620746865207072696D617279207669657720636F6E74726F6C6C65722E
		Sub SetPrimaryBackgroundStyleXC(Extends scr as iOSSplitView, style as SplitViewExtensionsXC.UISplitViewControllerBackgroundStyle)
		  //More info: https://developer.apple.com/documentation/uikit/uisplitviewcontroller/3238075-primarybackgroundstyle?language=objc
		  
		  // In macOS, the sidebar of a split view shows a blurred desktop behind its view.
		  // To achieve this effect in your iPad app when it runs in macOS, 
		  // set primaryBackgroundStyle to UISplitViewControllerBackgroundStyleSidebar.
		  // Set the style to UISplitViewControllerBackgroundStyleNone when you want to control the background appearance of the primary view controller.
		  
		  Declare sub setPrimaryBackgroundStyle lib "UIKit" _
		  selector "setPrimaryBackgroundStyle:" (obj As Ptr, style As UISplitViewControllerBackgroundStyle)
		  
		  
		  setPrimaryBackgroundStyle(scr.ViewControllerHandle, style)
		End Sub
	#tag EndMethod


	#tag Enum, Name = UISplitViewControllerBackgroundStyle, Type = Integer, Flags = &h1
		None
		Sidebar = 1
	#tag EndEnum

	#tag Enum, Name = UISplitViewControllerDisplayMode, Flags = &h1
		Automatic = 0
		  secondaryOnly
		  oneBesideSecondary
		oneOverSecondary
	#tag EndEnum


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
