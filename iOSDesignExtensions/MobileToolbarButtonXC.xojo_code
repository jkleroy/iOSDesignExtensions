#tag Module
Protected Module MobileToolbarButtonXC
	#tag Method, Flags = &h0, Description = 416E206974656D20796F752075736520746F20636F6E74726F6C2074686520706C6163656D656E74206F6620746865207365617263682062617220696E206120746F6F6C626172206F6E206950686F6E652E2043616E2072657475726E204E696C
		Function GetSearchBarPlacementBarButtonItemXC(extends s as MobileScreen) As MobileToolbarButton
		  
		  if ExtensionsXC.GetiOSVersionXC >= 26.0 then
		    
		    Declare Function navigationItem Lib "UIKit" _
		    Selector "navigationItem" (vc As Ptr) As Ptr
		    Declare Function searchBarPlacementBarButtonItem Lib "UIKit" _
		    Selector "searchBarPlacementBarButtonItem" (navItem As Ptr) As Ptr
		    
		    Dim navItem    As Ptr = navigationItem(s.ViewControllerHandle)
		    
		    if navItem = nil then Return nil
		    
		    Dim btnSearch  As Ptr = searchBarPlacementBarButtonItem(navItem)
		    if btnSearch = nil then Return nil
		    
		    Dim searchButton As MobileToolbarButton = MobileToolbarButton.FromHandle(btnSearch)
		    
		    Return searchButton
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSearchBarPlacementBarButtonItemXC(s as MobileScreen) As MobileToolbarButton
		  
		  Return s.GetSearchBarPlacementBarButtonItemXC
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub RemoveBadgeXC(extends tb as MobileToolbarButton)
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    
		    // Remove badge
		    setBadge(tb.Handle, Nil)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120626F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746865206261636B67726F756E642074686973206974656D206D61792073686172652077697468206F74686572206974656D7320696E20746865206261722073686F756C642062652068696464656E2E
		Sub SetHidesSharedBackgroundXC(extends tb As MobileToolbarButton, value As boolean)
		  //hidesSharedBackground lets a button opt out of the shared glass pill even when surrounded by buttons that have sharesBackground = true — useful for creating visual separations within a toolbar group.
		  
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  
		  'Declare Function hidesSharedBackground Lib "UIKit" Selector "hidesSharedBackground" (obj As Ptr) As Boolean
		  Declare Sub setHidesSharedBackground Lib "UIKit" Selector "setHidesSharedBackground:" (obj As Ptr, value As Boolean)
		  Dim handle As Ptr = tb.Handle
		  If respondsToSelector(handle, NSSelectorFromString("setHidesSharedBackground:")) Then
		    setHidesSharedBackground(handle, value)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub SetIndicatorBadgeXC(extends tb as MobileToolbarButton)
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    // Three ways to create a badge
		    Declare Function badgeWithCount  Lib "UIKit" Selector "badgeWithCount:"  (cls As Ptr, count As UInteger) As Ptr
		    Declare Function badgeWithString Lib "UIKit" Selector "badgeWithString:" (cls As Ptr, value As CFStringRef) As Ptr
		    Declare Function indicatorBadge  Lib "UIKit" Selector "indicatorBadge"   (cls As Ptr) As Ptr
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    // Optional color customization on the badge object
		    Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (obj As Ptr, col As Ptr)
		    Declare Sub setForegroundColor Lib "UIKit" Selector "setForegroundColor:" (obj As Ptr, col As Ptr)
		    
		    
		    Dim badgeClass As Ptr = NSClassFromString("UIBarButtonItemBadge")
		    
		    // Dot indicator (no content)
		    Dim badge As Ptr = indicatorBadge(badgeClass)
		    
		    
		    
		    setBadge(tb.Handle, badge)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub SetIndicatorBadgeXC(extends tb as MobileToolbarButton, backgroundColor as Color)
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    // Three ways to create a badge
		    Declare Function badgeWithCount  Lib "UIKit" Selector "badgeWithCount:"  (cls As Ptr, count As UInteger) As Ptr
		    Declare Function badgeWithString Lib "UIKit" Selector "badgeWithString:" (cls As Ptr, value As CFStringRef) As Ptr
		    Declare Function indicatorBadge  Lib "UIKit" Selector "indicatorBadge"   (cls As Ptr) As Ptr
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    // Optional color customization on the badge object
		    Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (obj As Ptr, col As Ptr)
		    Declare Sub setForegroundColor Lib "UIKit" Selector "setForegroundColor:" (obj As Ptr, col As Ptr)
		    
		    
		    Dim badgeClass As Ptr = NSClassFromString("UIBarButtonItemBadge")
		    
		    // Dot indicator (no content)
		    Dim badge As Ptr = indicatorBadge(badgeClass)
		    
		    // Colors
		    if backgroundColor.Alpha <> 255  then
		      Dim uic as ptr
		      
		      uic = ExtensionsXC.UIColorFromColor(backgroundColor)
		      setBackgroundColor(badge, uic)
		    end if
		    
		    'if foregroundColor.Alpha <> 255  then
		    'Dim uic as ptr
		    '
		    'uic = ExtensionsXC.UIColorFromColor(foregroundColor)
		    'setForegroundColor(badge, uic)
		    'end if
		    
		    setBadge(tb.Handle, badge)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub SetNumberedBadgeXC(extends tb as MobileToolbarButton, value as integer)
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    // Three ways to create a badge
		    Declare Function badgeWithCount  Lib "UIKit" Selector "badgeWithCount:"  (cls As Ptr, count As UInteger) As Ptr
		    Declare Function badgeWithString Lib "UIKit" Selector "badgeWithString:" (cls As Ptr, value As CFStringRef) As Ptr
		    Declare Function indicatorBadge  Lib "UIKit" Selector "indicatorBadge"   (cls As Ptr) As Ptr
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    // Optional color customization on the badge object
		    Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (obj As Ptr, col As Ptr)
		    Declare Sub setForegroundColor Lib "UIKit" Selector "setForegroundColor:" (obj As Ptr, col As Ptr)
		    
		    
		    Dim badgeClass As Ptr = NSClassFromString("UIBarButtonItemBadge")
		    // Numbered badge
		    Dim badge As Ptr = badgeWithCount(badgeClass, value)
		    
		    
		    
		    setBadge(tb.Handle, badge)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub SetNumberedBadgeXC(extends tb as MobileToolbarButton, value as integer, backgroundColor as Color, foregroundColor as Color)
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    // Three ways to create a badge
		    Declare Function badgeWithCount  Lib "UIKit" Selector "badgeWithCount:"  (cls As Ptr, count As UInteger) As Ptr
		    Declare Function badgeWithString Lib "UIKit" Selector "badgeWithString:" (cls As Ptr, value As CFStringRef) As Ptr
		    Declare Function indicatorBadge  Lib "UIKit" Selector "indicatorBadge"   (cls As Ptr) As Ptr
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    // Optional color customization on the badge object
		    Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (obj As Ptr, col As Ptr)
		    Declare Sub setForegroundColor Lib "UIKit" Selector "setForegroundColor:" (obj As Ptr, col As Ptr)
		    
		    
		    Dim badgeClass As Ptr = NSClassFromString("UIBarButtonItemBadge")
		    // Numbered badge
		    Dim badge As Ptr = badgeWithCount(badgeClass, value)
		    
		    // Colors
		    if backgroundColor.Alpha <> 255  then
		      Dim uic as ptr
		      
		      uic = ExtensionsXC.UIColorFromColor(backgroundColor)
		      setBackgroundColor(badge, uic)
		    end if
		    
		    if foregroundColor.Alpha <> 255  then
		      Dim uic as ptr
		      
		      uic = ExtensionsXC.UIColorFromColor(foregroundColor)
		      setForegroundColor(badge, uic)
		    end if
		    
		    setBadge(tb.Handle, badge)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProminentStyleXC(extends tb As MobileToolbarButton)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120626F6F6C65616E2076616C756520696E6469636174696E67207768657468657220746869732062617220627574746F6E206974656D2063616E2073686172652061206261636B67726F756E642077697468206F74686572206974656D7320696E2061206E617669676174696F6E20626172206F72206120746F6F6C6261722E
		Sub SetSharesBackgroundXC(extends tb As MobileToolbarButton, value As boolean)
		  //This groups adjacent toolbar buttons so they share a single Liquid Glass pill background instead of each having their own.
		  
		  Declare Function NSSelectorFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  Declare Function respondsToSelector Lib "UIKit" Selector "respondsToSelector:" (obj As Ptr, sel As Ptr) As Boolean
		  
		  Declare Sub setSharesBackground Lib "UIKit" Selector "setSharesBackground:" (obj As Ptr, value As Boolean)
		  Dim handle As Ptr = tb.Handle
		  If respondsToSelector(handle, NSSelectorFromString("setSharesBackground:")) Then
		    setSharesBackground(handle, value)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub SetTextBadgeXC(extends tb as MobileToolbarButton, value as String)
		  
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    // Three ways to create a badge
		    
		    Declare Function badgeWithString Lib "UIKit" Selector "badgeWithString:" (cls As Ptr, value As CFStringRef) As Ptr
		    
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    // Optional color customization on the badge object
		    Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (obj As Ptr, col As Ptr)
		    Declare Sub setForegroundColor Lib "UIKit" Selector "setForegroundColor:" (obj As Ptr, col As Ptr)
		    
		    
		    Dim badgeClass As Ptr = NSClassFromString("UIBarButtonItemBadge")
		    
		    // Text badge
		    Dim badge As Ptr = badgeWithString(badgeClass, "New")
		    
		    
		    
		    setBadge(tb.Handle, badge)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4372656174657320612062616467652077697468207468652073706563696669656420636F756E742E
		Sub SetTextBadgeXC(extends tb as MobileToolbarButton, value as String, backgroundColor as Color, foregroundColor as Color)
		  
		  if ExtensionsXC.GetiOSVersionXC >= 26 then
		    
		    Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		    // Three ways to create a badge
		    
		    Declare Function badgeWithString Lib "UIKit" Selector "badgeWithString:" (cls As Ptr, value As CFStringRef) As Ptr
		    
		    // Set/remove badge on the bar button item
		    Declare Sub setBadge Lib "UIKit" Selector "setBadge:" (obj As Ptr, badge As Ptr)
		    // Optional color customization on the badge object
		    Declare Sub setBackgroundColor Lib "UIKit" Selector "setBackgroundColor:" (obj As Ptr, col As Ptr)
		    Declare Sub setForegroundColor Lib "UIKit" Selector "setForegroundColor:" (obj As Ptr, col As Ptr)
		    
		    
		    Dim badgeClass As Ptr = NSClassFromString("UIBarButtonItemBadge")
		    
		    // Text badge
		    Dim badge As Ptr = badgeWithString(badgeClass, "New")
		    
		    // Colors
		    if backgroundColor.Alpha <> 255  then
		      Dim uic as ptr
		      
		      uic = ExtensionsXC.UIColorFromColor(backgroundColor)
		      setBackgroundColor(badge, uic)
		    end if
		    
		    if foregroundColor.Alpha <> 255  then
		      Dim uic as ptr
		      
		      uic = ExtensionsXC.UIColorFromColor(foregroundColor)
		      setForegroundColor(badge, uic)
		    end if
		    
		    
		    
		    setBadge(tb.Handle, badge)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520636F6C6F72206F66206120546F6F6C627574746F6E
		Sub SetTintColorXC(extends tb As MobileToolbarButton, value As Color)
		  
		  Declare Sub setTintColor Lib "UIKit.framework" selector "setTintColor:" (id As ptr, UIColor As Ptr)
		  setTintColor tb.handle, New UIColor(value)
		  
		  
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
