#tag Module
Protected Module TabBarExtensionsXC
	#tag Method, Flags = &h1, Description = 47657473207468652063757272656E74207061676520696E64657820696E20612054616242617220766965772E200A52657475726E73202D31206966207468652063757272656E74207669657720636F6E74726F6C6C65722069736E27742061205461624261722E
		Protected Function GetTabPageXC() As Integer
		  
		  'This method has been posted in the forum by Antonio Rinaldi.
		  'It allows setting the active tab like if the user had tapped himself on the tab icon, without need for PushTo.
		  'Index is zero based, left to right
		  
		  
		  
		  'Sub goTabPage(idx as integer,doReset as Boolean=False)
		  
		  Declare Function NSClassFromString Lib "Foundation"(cls As CFStringRef) As Ptr
		  Declare Function sharedApplication_ Lib "UIKit" selector "sharedApplication"(cls_ptr As Ptr) As Ptr
		  Dim shAppPtr As Ptr=sharedApplication_(NSClassFromString("UIApplication"))
		  
		  Declare Function keyWindow_ Lib "UIkit" selector "keyWindow"(app_ptr As Ptr) As Ptr
		  Dim keyWinPtr As Ptr=keyWindow_(shAppPtr)
		  
		  Declare Function rootWiewController_ Lib "UIKit" selector "rootViewController"(winPtr As Ptr) As Ptr
		  Dim rootWiewControllerPtr As Ptr=rootWiewController_(keyWinPtr)
		  
		  Declare Function isMemberOfClass_ Lib "foundation" selector "isMemberOfClass:"(oPtr As Ptr,cPtr As Ptr) As Boolean
		  Dim a As ptr
		  a=NSClassFromString("UITabBarController")
		  If isMemberOfClass_(rootWiewControllerPtr,NSClassFromString("UITabBarController")) Then
		    Declare Function getSelectedIndex Lib "UIKIT" selector "selectedIndex"(tbPtr As Ptr) as UInteger
		    return getSelectedIndex(rootWiewControllerPtr)
		    
		    
		  End If
		  
		  Return -1
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToHideTabBarXC(extends parentView As MobileScreen, childView As MobileScreen)
		  
		  
		  ' This method was posted by Paul Lefebvre at https://forum.xojo.com/18176-controlling-tab-bar-visibility/last
		  ' on 12/12/2014
		  
		  'To hide the tabbar for a view, call as such :
		  'Dim v As New View1
		  'hideTabBar(v, Self)
		  
		  // @property(nonatomic) BOOL hidesBottomBarWhenPushed
		  
		  Declare Sub setHidesBottomBarWhenPushed Lib "UIKit.framework" _
		  Selector "setHidesBottomBarWhenPushed:" (id As Ptr, value As Boolean)
		  
		  setHidesBottomBarWhenPushed(childview.ViewControllerHandle, True)
		  
		  parentView.PushTo(childView)
		  
		  // To reinstate the tab bar, close the pushed view.
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473206120626164676520746F2061205461626261722E205061737320616E20656D70747920737472696E6720746F2072656D6F7665207468652062616467652E
		Sub SetTabBarBadgeXC(extends v As MobileScreen, ItemIndex As Integer, Badge As String)
		  
		  Declare Function tabbar_ Lib "UIKit.framework" selector "tabBar"(o As Ptr) As Ptr
		  Declare Function items_ Lib "UIKit.framework" selector "items" (o As ptr) As ptr
		  Declare Function objectAtIndex Lib "Foundation.framework" selector "objectAtIndex:" (theArray As Ptr, idx As Integer) As Ptr
		  
		  Dim tb As iOSTabBar = v.ParentTabBar
		  If tb Is Nil Then Return
		  Dim h As ptr = tb.ViewControllerHandle
		  
		  Dim tabbar As Ptr = tabbar_(h)
		  
		  Dim items As ptr = items_(tabbar)
		  Dim item0 As ptr = objectAtIndex(items, ItemIndex)
		  
		  
		  Declare Sub setBadgeValue Lib "UIKit.framework" selector "setBadgeValue:" (obj_id As ptr, value As CFStringRef)
		  
		  if Badge.IsEmpty then
		    setBadgeValue(item0, nil)
		  else
		    setBadgeValue(item0, Badge)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520436F6C6F72206F66206120546162426172
		Sub SetTabBarButtonColorXC(extends v as MobileScreen, buttonColor as color)
		  
		  
		  Declare Function tabbar_ lib "UIKit.framework" selector "tabBar"(o as Ptr) as Ptr
		  
		  
		  dim tb as iOSTabBar=v.ParentTabBar
		  if tb is nil then Return
		  dim h as ptr = tb.ViewControllerHandle
		  
		  dim tabbar as Ptr = tabbar_(h)
		  
		  
		  declare sub setTintColor lib "UIKit.framework" selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  setTintColor tabBar, UIColorFromColor(buttonColor)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865206261636B67726F756E6420636F6C6F72206F66206120546162426172
		Sub SetTabBarColorXC(extends v as MobileScreen, barColor as color, translucent as boolean = false)
		  
		  
		  Declare Function tabbar_ Lib "UIKit.framework" selector "tabBar"(o As Ptr) As Ptr
		  
		  
		  dim tb as iOSTabBar=v.ParentTabBar
		  if tb is nil then Return
		  dim h as ptr = tb.ViewControllerHandle
		  
		  dim tabbar as Ptr = tabbar_(h)
		  
		  
		  'Declare Sub setBarTintColor Lib "UIKit.framework" selector "setBarTintColor:" (id As ptr, UIColor As Ptr)
		  'setBarTintColor tabBar, UIColorFromColor(barColor)
		  
		  if translucent then
		    declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr)
		    setTranslucent tabbar
		  end
		  
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13 then
		    
		    declare function init lib "Foundation.framework" selector "init" (obj_id as ptr) as ptr
		    Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		    Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		    
		    
		    Declare Function getStandardAppearance lib "UIKit.framework" selector "standardAppearance" (obj as ptr) as ptr
		    Declare sub setStandardAppearance lib "UIKit.framework" selector "setStandardAppearance:" (obj as ptr, value as ptr)
		    
		    Declare Function getScrollEdgeAppearance lib "UIKit.framework" selector "scrollEdgeAppearance" (obj as ptr) as ptr
		    Declare sub setScrollEdgeAppearance lib "UIKit.framework" selector "setScrollEdgeAppearance:" (obj as ptr, value as ptr)
		    
		    Dim standardAppearance as ptr = getStandardAppearance(tabbar)
		    
		    
		    
		    Declare sub setBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (obj as ptr, UIColor as ptr)
		    
		    If barColor.Alpha = 255 then
		      setBackgroundColor standardAppearance, UIColor.ClearColor
		    Else
		      setBackgroundColor standardAppearance, new UIColor(barColor)
		    End If
		    
		    //Now re-define the appearances
		    setStandardAppearance(tabbar, standardAppearance)
		    
		    
		    if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		      
		      Declare Function getScrollEdgeAppearance lib "UIKit.framework" selector "scrollEdgeAppearance" (obj as ptr) as ptr
		      Declare sub setScrollEdgeAppearance lib "UIKit.framework" selector "setScrollEdgeAppearance:" (obj as ptr, value as ptr)
		      
		      Dim scrollEdgeAppearance as ptr = getScrollEdgeAppearance(tabbar)
		      
		      if scrollEdgeAppearance = nil then
		        scrollEdgeAppearance = init(alloc(NSClassFromString("UITabBarAppearance")))
		        
		        declare sub configureWithTransparentBackground lib "UIKit.framework" selector "configureWithTransparentBackground" (obj as ptr)
		        configureWithTransparentBackground(scrollEdgeAppearance)
		        
		      end if
		      
		      If barColor.Alpha = 255 then
		        setBackgroundColor scrollEdgeAppearance, UIColor.ClearColor
		      Else
		        setBackgroundColor scrollEdgeAppearance, new UIColor(barColor)
		      End If
		      
		      setScrollEdgeAppearance(tabbar, scrollEdgeAppearance)
		    end if
		    
		    
		    
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520637573746F6D697A6174696F6E2066656174757265206F662054616220706167657320617320586F6A6F20646F65736E27742068616E646C652069742E
		Sub SetTabBarNotCustomisableXC(extends view As MobileScreen)
		  Dim tb As iOSTabBar = view.ParentTabBar
		  
		  If tb <> Nil Then
		    Dim h As ptr = tb.ViewControllerHandle
		    
		    Declare Sub setCustomizableViewControllers Lib "UIKit" selector "setCustomizableViewControllers:" (o As Ptr, v As Ptr)
		    setCustomizableViewControllers(h, Nil)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765207468652073656C656374656420696D616765206F66206120746162626172206974656D2E
		Sub SetTabBarSelectedImageXC(extends v As MobileScreen, ItemIndex As Integer, Image As Picture)
		  
		  Declare Function tabbar_ Lib "UIKit.framework" selector "tabBar"(o As Ptr) As Ptr
		  Declare Function items_ Lib "UIKit.framework" selector "items" (o As ptr) As ptr
		  Declare Function objectAtIndex Lib "Foundation.framework" selector "objectAtIndex:" (theArray As Ptr, idx As Integer) As Ptr
		  
		  Dim tb As iOSTabBar = v.ParentTabBar
		  If tb Is Nil Then Return
		  Dim h As ptr = tb.ViewControllerHandle
		  
		  Dim tabbar As Ptr = tabbar_(h)
		  
		  Dim items As ptr = items_(tabbar)
		  Dim item0 As ptr = objectAtIndex(items, ItemIndex)
		  
		  
		  Declare Sub setSelectedImage Lib "UIKit.framework" selector "setSelectedImage:" (obj_id As ptr, value As ptr)
		  
		  if image is nil then
		    setSelectedImage(item0, nil)
		  else
		    setSelectedImage(item0, Image.Handle)
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662074686520736861646F77206C696E652E2055736520636F6C6F722E436C65617220746F206D616B6520697420696E76697369626C65
		Sub SetTabBarShadowColorXC(extends v as MobileScreen, value as Color)
		  
		  
		  
		  Declare Function tabbar_ Lib "UIKit.framework" selector "tabBar"(o As Ptr) As Ptr
		  
		  
		  dim tb as iOSTabBar=v.ParentTabBar
		  if tb is nil then Return
		  dim h as ptr = tb.ViewControllerHandle
		  
		  dim tabbar as Ptr = tabbar_(h)
		  
		  
		  Dim appearance As ViewextensionsXC.Appearances = ViewExtensionsXC.Appearances.all
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13 then
		    
		    declare function init lib "Foundation.framework" selector "init" (obj_id as ptr) as ptr
		    Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		    Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		    Declare sub setShadowImage lib "UIKit.framework" selector "setShadowImage:" (id as ptr, image as ptr)
		    
		    
		    Declare function getStandardAppearance lib "UIKit.framework" selector "standardAppearance" (obj as ptr) as ptr
		    
		    Dim tabBarAppearance as ptr = getStandardAppearance(tabbar)
		    
		    if tabBarAppearance = nil then
		      Break
		      'navBarAppearance = init(alloc(NSClassFromString("UINavigationBarAppearance")))
		      
		    end if
		    
		    Declare Sub setBackgroundImage Lib "UIKit.Framework" selector "setBackgroundImage:" (id As ptr, image As ptr)
		    'setBackgroundImage(tabBarAppearance, init(alloc(NSClassFromString("UIImage"))))
		    
		    'setShadowImage(tabBarAppearance, init(alloc(NSClassFromString("UIImage"))))
		    
		    
		    Declare Sub setShadowColor Lib "Foundation" selector "setShadowColor:" (obj as ptr, value as Ptr)
		    
		    if value.Alpha = 255 then
		      setShadowColor(tabBarAppearance, UIColor.ClearColor)
		      
		    Else
		      setShadowColor(tabBarAppearance, new UIColor(value))
		    end if
		    
		    
		    Declare sub setStandardAppearance lib "UIKit.framework" selector "setStandardAppearance:" (obj as ptr, value as ptr)
		    
		    if appearance = ViewExtensionsXC.Appearances.all or appearance = ViewExtensionsXC.Appearances.standard then
		      setStandardAppearance(tabbar, tabBarAppearance)
		    end if
		    
		    
		    
		    if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		      
		      Declare Function getScrollEdgeAppearance lib "UIKit.framework" selector "scrollEdgeAppearance" (obj as ptr) as ptr
		      Declare sub setScrollEdgeAppearance lib "UIKit.framework" selector "setScrollEdgeAppearance:" (obj as ptr, value as ptr)
		      
		      Dim scrollEdgeAppearance as ptr = getScrollEdgeAppearance(tabbar)
		      
		      if scrollEdgeAppearance = nil then
		        scrollEdgeAppearance = init(alloc(NSClassFromString("UITabBarAppearance")))
		        
		        declare sub configureWithTransparentBackground lib "UIKit.framework" selector "configureWithTransparentBackground" (obj as ptr)
		        configureWithTransparentBackground(scrollEdgeAppearance)
		        
		      end if
		      
		      
		      
		      if value.Alpha = 255 then
		        setShadowColor(scrollEdgeAppearance, UIColor.ClearColor)
		        
		      Else
		        setShadowColor(scrollEdgeAppearance, new UIColor(value))
		      end if
		      
		      setScrollEdgeAppearance(tabbar, scrollEdgeAppearance)
		    end if
		    
		    
		  end if
		  
		  
		  Declare sub layoutIfNeeded Lib "UIKit" selector "layoutIfNeeded" (obj as ptr)
		  layoutIfNeeded(tabbar)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207469746C65207573656420696E2074686520546162426172
		Sub SetTabBarTitleXC(extends v As MobileScreen, value As String)
		  
		  Declare function tabBarItem lib "UIKit" selector "tabBarItem" (obj as ptr) as ptr
		  
		  Declare sub setTitle lib "UIKit" selector "setTitle:" (obj as ptr, value as cfstringref)
		  
		  Dim item As Ptr = tabBarItem(v.ViewControllerHandle)
		  
		  setTitle(item, value) 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520436F6C6F72206F66206120546162426172
		Sub SetTabBarUnselectedColorXC(extends v as MobileScreen, unselectedColor as color)
		  
		  
		  Declare Function tabbar_ lib "UIKit.framework" selector "tabBar"(o as Ptr) as Ptr
		  
		  
		  dim tb as iOSTabBar = v.ParentTabBar
		  if tb is nil then Return
		  dim h as ptr = tb.ViewControllerHandle
		  
		  dim tabbar as Ptr = tabbar_(h)
		  
		  
		  declare sub setUnselectedItemTintColor lib "UIKit.framework" selector "setUnselectedItemTintColor:" (id as ptr, UIColor as Ptr)
		  setUnselectedItemTintColor tabBar, UIColorFromColor(unselectedColor)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 536574732074686520616374697665207061676520696E20612054616242617220766965772E
		Protected Sub SetTabPageXC(idx as integer, doReset as Boolean = False)
		  'This method has been posted in the forum by Antonio Rinaldi.
		  'It allows setting the active tab like if the user had tapped himself on the tab icon, without need for PushTo.
		  'Index is zero based, left to right
		  
		  
		  
		  'Sub goTabPage(idx as integer,doReset as Boolean=False)
		  if idx<0 then Return
		  Declare Function NSClassFromString lib "Foundation"(cls as CFStringRef) as Ptr
		  Declare function sharedApplication_ lib "UIKit" selector "sharedApplication"(cls_ptr as Ptr) as Ptr
		  dim shAppPtr as Ptr=sharedApplication_(NSClassFromString("UIApplication"))
		  
		  Declare function keyWindow_ lib "UIkit" selector "keyWindow"(app_ptr as Ptr) as Ptr
		  dim keyWinPtr as Ptr=keyWindow_(shAppPtr)
		  
		  Declare Function rootWiewController_ lib "UIKit" selector "rootViewController"(winPtr as Ptr) as Ptr
		  dim rootWiewControllerPtr as Ptr=rootWiewController_(keyWinPtr)
		  
		  Declare Function isMemberOfClass_ lib "foundation" selector "isMemberOfClass:"(oPtr as Ptr,cPtr as Ptr) as Boolean
		  dim a as ptr
		  a=NSClassFromString("UITabBarController")
		  if isMemberOfClass_(rootWiewControllerPtr,NSClassFromString("UITabBarController")) then
		    Declare sub setSelectedIndex lib "UIKIT" selector "setSelectedIndex:"(tbPtr as Ptr,page as UInteger)
		    setSelectedIndex(rootWiewControllerPtr,idx)
		    
		    if doReset then
		      Declare Function selectedViewController_ lib "UIKIT" selector "selectedViewController"(oPtr as ptr) as Ptr
		      dim navPtr as Ptr=selectedViewController_(rootWiewControllerPtr)
		      Declare Sub popToRoot lib "UIKIT" selector "popToRootViewControllerAnimated:"(oPtr as Ptr,animated as Boolean)
		      popToRoot(navPtr,true)
		    end if
		  end if
		  'End Sub
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UIColorFromColor(value as color) As ptr
		  Soft Declare Function colorWithRGBA Lib "UIKit" Selector "colorWithRed:green:blue:alpha:" (UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  
		  Soft Declare Function NSClassFromString Lib "Foundation" (classname As CFStringRef) As Ptr
		  
		  
		  static UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  
		  Dim c as color  = value
		  
		  Dim red As CGFloat = c.red / 255
		  Dim green As CGFloat = c.Green / 255
		  Dim blue As CGFloat = c.Blue / 255
		  Dim alpha As CGFloat = 1.0 - c.Alpha / 255
		  
		  Dim colorPtr As ptr = colorWithRGBA(UIColorClassPtr, red, green, blue, alpha)
		  
		  Return colorPtr
		End Function
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
