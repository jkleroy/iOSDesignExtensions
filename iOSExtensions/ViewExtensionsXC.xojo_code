#tag Module
Protected Module ViewExtensionsXC
	#tag Method, Flags = &h0, Description = 416464732061206269672070726F6772657373576865656C20696E207468652063656E746572206F662074686520436F6E7461696E6572
		Sub AddProgressXC(extends mView As iOSContainerControl, ByRef Progress As iOSProgressWheel, DarkBackground As Boolean = False)
		  
		  Progress = new iOSProgressWheel
		  
		  If DarkBackground Then
		    Progress.SetActivityIndicatorViewStyleXC(ControlExtensionsXC.UIActivityIndicatorViewStyle.whiteLarge)
		  Else
		    Progress.SetActivityIndicatorViewStyleXC(ControlExtensionsXC.UIActivityIndicatorViewStyle.whiteLarge)
		    
		    declare sub setColor lib "UIKit.framework" selector "setColor:" (obj_id as ptr, col as ptr)
		    setColor(Progress.handle, UIColor.Gray)
		    
		  end if
		  
		  mView.AddControl(Progress)
		  
		  Dim cons As new iOSLayoutConstraint(Progress, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  mView, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  1, _
		  0)
		  cons.Active = True
		  mView.AddConstraint(cons)
		  
		  cons = new iOSLayoutConstraint(Progress, _
		  iOSLayoutConstraint.AttributeTypes.CenterY, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  mView, _
		  iOSLayoutConstraint.AttributeTypes.CenterY, _
		  1, _
		  0)
		  cons.Active = True
		  mView.AddConstraint(cons)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 416464732061206269672070726F6772657373576865656C20696E207468652063656E746572206F66207468652056696577
		Sub AddProgressXC(extends mView As iOSView, ByRef Progress As iOSProgressWheel, DarkBackground As Boolean = False)
		  
		  Progress = New iOSProgressWheel
		  
		  Progress.SetActivityIndicatorViewStyleXC(ControlExtensionsXC.UIActivityIndicatorViewStyle.whiteLarge)
		  
		  If Not DarkBackground Then
		    
		    Declare Sub setColor Lib "UIKit.framework" selector "setColor:" (obj_id As ptr, col As ptr)
		    setColor(Progress.handle, UIColor.Gray)
		    
		  End If
		  
		  mView.AddControl(Progress)
		  
		  Dim cons As New iOSLayoutConstraint(Progress, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  mView, _
		  iOSLayoutConstraint.AttributeTypes.CenterX, _
		  1, _
		  0)
		  cons.Active = True
		  mView.AddConstraint(cons)
		  
		  cons = New iOSLayoutConstraint(Progress, _
		  iOSLayoutConstraint.AttributeTypes.CenterY, _
		  iOSLayoutConstraint.RelationTypes.Equal, _
		  mView, _
		  iOSLayoutConstraint.AttributeTypes.CenterY, _
		  1, _
		  0)
		  cons.Active = True
		  mView.AddConstraint(cons)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436C6F73657320612076696577207468617420776173206F70656E6564206173206D6F64616C2E
		Sub DismissViewControllerXC(extends v As iOSView, animated As Boolean = True, callback as iOSBlock = nil)
		  
		  Declare Sub dismissViewController_ Lib "UIKit.framework" _
		  Selector "dismissViewControllerAnimated:completion:" _
		  (viewController As Ptr, animated As Boolean, completion As Ptr)
		  
		  
		  If callback <> Nil Then
		    dismissViewController_(v.ViewControllerHandle, animated, callback.handle)
		  Else
		    dismissViewController_(v.ViewControllerHandle, animated, Nil)
		  End If
		End Sub
	#tag EndMethod

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
		Sub HideNavBarShadowXC(extends v as iOSView)
		  
		  
		  
		  '[self.navigationController.navigationBar setBackgroundImage:[UIImage new]
		  '                     forBarMetrics:UIBarMetricsDefault];
		  'self.navigationController.navigationBar.shadowImage = [UIImage new];
		  'self.navigationController.navigationBar.translucent = YES;
		  'self.navigationController.view.backgroundColor = [UIColor clearColor];
		  'self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
		  
		  
		  Declare Function init Lib "Foundation.framework" selector "init" (obj_id As ptr) As ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  
		  declare function keyWindow lib "UIKit" selector "keyWindow" (obj_ref as ptr) as ptr
		  declare function sharedApplication lib "UIKit" selector "sharedApplication" (obj_ref as ptr) as ptr
		  declare function rootViewController lib "UIKit" selector "rootViewController" (obj_ref as ptr) as ptr
		  declare function navigationBar lib "UIKit" selector "navigationBar" (obj_ref as ptr) as ptr
		  declare function view lib "UIKit.framework" selector "view" (obj_ref as ptr) as ptr
		  
		  declare function navigationController lib "UIKit" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  Dim view As ptr = view(navigationControllerRef)
		  
		  
		  Declare Sub setBackgroundImage Lib "UIKit.Framework" selector "setBackgroundImage:forBarMetrics:" (id As ptr, image As ptr, metrics As Integer)
		  setBackgroundImage(navBar, init(alloc(NSClassFromString("UIImage"))) , 0)
		  
		  Declare sub setShadowImage lib "UIKit.framework" selector "setShadowImage:" (id as ptr, image as ptr)
		  setShadowImage(navBar, init(alloc(NSClassFromString("UIImage"))))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PushToShowModalCurlXC(extends parent As iOSView, v As iOSView, style As ViewExtensionsXC.UIModalPresentationStyle=ViewExtensionsXC.UIModalPresentationStyle.fullscreen, Animate As Boolean=True, callback As iOSBlock=Nil)
		  //Removed
		  
		  #If False
		    Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		    Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		    Declare Function initWithRootViewController_ Lib "Foundation" selector "initWithRootViewController:" (obj_id As ptr, rootViewController As ptr) As ptr
		    Declare Sub presentViewController Lib "UIKit.framework" _
		    Selector "presentViewController:animated:completion:" _
		    (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		    Declare Sub modalPresentationStyle_ Lib "UIKit.framework" Selector "setModalPresentationStyle:" (obj_id As Ptr, modalPresentationStyle As UIModalPresentationStyle)
		    Declare Sub modalTransitionStyle_ Lib "UIKit.framework" Selector "setModalTransitionStyle:" (obj_id As Ptr, modalTransitionStyle As UIModalTransitionStyle)
		    
		    
		    
		    Dim navController As ptr = initWithRootViewController_( alloc(NSClassFromString("UINavigationController")), v.ViewControllerHandle ) 
		    
		    
		    modalPresentationStyle_(navController, style)
		    modalTransitionStyle_(navController, UIModalTransitionStyle.partialCurl)
		    
		    
		    
		    If callback <> Nil Then
		      Break
		      //This code might fail
		    end if
		    
		    If callback Is Nil Then
		      presentViewController(parent.Handle, navController, Animate, Nil)
		    Else
		      presentViewController(parent.Handle, navController, Animate, callback.handle)
		    End If
		    
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToShowModalDissolveXC(extends parent As iOSView, v As iOSView, style As ViewExtensionsXC.UIModalPresentationStyle=ViewExtensionsXC.UIModalPresentationStyle.fullscreen, Animate As Boolean=True, callback As iOSBlock=Nil)
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function initWithRootViewController_ Lib "Foundation" selector "initWithRootViewController:" (obj_id As ptr, rootViewController As ptr) As ptr
		  Declare Sub presentViewController Lib "UIKit.framework" _
		  Selector "presentViewController:animated:completion:" _
		  (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		  Declare Sub modalPresentationStyle_ Lib "UIKit.framework" Selector "setModalPresentationStyle:" (obj_id As Ptr, modalPresentationStyle As UIModalPresentationStyle)
		  Declare Sub modalTransitionStyle_ Lib "UIKit.framework" Selector "setModalTransitionStyle:" (obj_id As Ptr, modalTransitionStyle As UIModalTransitionStyle)
		  
		  
		  
		  Dim navController As ptr = initWithRootViewController_( alloc(NSClassFromString("UINavigationController")), v.ViewControllerHandle ) 
		  
		  
		  modalPresentationStyle_(navController, style)
		  modalTransitionStyle_(navController, UIModalTransitionStyle.crossDissolve)
		  
		  
		  
		  If callback <> Nil Then
		    Break
		    //This code might fail
		  end if
		  
		  If callback Is Nil Then
		    presentViewController(parent.Handle, navController, Animate, Nil)
		  Else
		    presentViewController(parent.Handle, navController, Animate, callback.handle)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToShowModalFlipXC(extends parent As iOSView, v As iOSView, style As ViewExtensionsXC.UIModalPresentationStyle=ViewExtensionsXC.UIModalPresentationStyle.fullscreen, Animate As Boolean=True, callback As iOSBlock=Nil)
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function initWithRootViewController_ Lib "Foundation" selector "initWithRootViewController:" (obj_id As ptr, rootViewController As ptr) As ptr
		  Declare Sub presentViewController Lib "UIKit.framework" _
		  Selector "presentViewController:animated:completion:" _
		  (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		  Declare Sub modalPresentationStyle_ Lib "UIKit.framework" Selector "setModalPresentationStyle:" (obj_id As Ptr, modalPresentationStyle As UIModalPresentationStyle)
		  Declare Sub modalTransitionStyle_ Lib "UIKit.framework" Selector "setModalTransitionStyle:" (obj_id As Ptr, modalTransitionStyle As UIModalTransitionStyle)
		  
		  
		  
		  Dim navController As ptr = initWithRootViewController_( alloc(NSClassFromString("UINavigationController")), v.ViewControllerHandle ) 
		  
		  
		  modalPresentationStyle_(navController, style)
		  modalTransitionStyle_(navController, UIModalTransitionStyle.flipHorizontal)
		  
		  
		  
		  If callback <> Nil Then
		    Break
		    //This code might fail
		  end if
		  
		  If callback Is Nil Then
		    presentViewController(parent.Handle, navController, Animate, Nil)
		  Else
		    presentViewController(parent.Handle, navController, Animate, callback.handle)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PushToShowModalXC(extends parent As iOSView, v As iOSView, style As ViewExtensionsXC.UIModalPresentationStyle=ViewExtensionsXC.UIModalPresentationStyle.fullscreen, Animate As Boolean=True, callback As iOSBlock=Nil)
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function initWithRootViewController_ Lib "Foundation" selector "initWithRootViewController:" (obj_id As ptr, rootViewController As ptr) As ptr
		  Declare Sub presentViewController Lib "UIKit.framework" _
		  Selector "presentViewController:animated:completion:" _
		  (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		  Declare Sub modalPresentationStyle_ Lib "UIKit.framework" selector "setModalPresentationStyle:" (obj_id As ptr, modalPresentationStyle As UIModalPresentationStyle)
		  
		  
		  
		  
		  Dim navController As ptr = initWithRootViewController_( alloc(NSClassFromString("UINavigationController")), v.ViewControllerHandle ) 
		  
		  
		  modalPresentationStyle_(navController, style)
		  
		  
		  
		  If callback <> Nil Then
		    Break
		    //This code might fail
		  end if
		  
		  If callback Is Nil Then
		    presentViewController(parent.Handle, navController, Animate, Nil)
		  Else
		    presentViewController(parent.Handle, navController, Animate, callback.handle)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620612056696577
		Sub SetBackgroundColorXC(extends v As iOSView, c As Color)
		  
		  
		  Dim uic As UIKit.UIColor
		  
		  if c.Alpha = 255 then
		    uic = UIKit.UIColor.ClearColor
		  else
		    uic = new UIKit.UIColor(c)
		  end if
		  
		  
		  
		  ' UIKit Declare to get a reference to a View from its ViewController
		  Declare Function decl_GetView lib "UIKit.framework" selector "view" (aUIViewController As Ptr) As Ptr
		  ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		  dim myViewPtr As Ptr = decl_GetView(v.Handle)
		  
		  ' UIKit Declare to set the backgound color of a View
		  Declare Sub decl_SetBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' Here is the corresponding Xojo call
		  decl_SetBackgroundColor(myViewPtr, uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundImageXC(extends v As iOSView, img As iOSImage)
		  
		  
		  dim resizedImg As iOSBitmap = new iOSBitmap(v.ContentSize.Width, v.ContentSize.Height, 1)
		  Dim g As iOSGraphics = resizedImg.Graphics
		  
		  dim newW, newH As Integer
		  
		  if g.Height > g.Width then
		    
		    newH = g.Height
		    newW = img.Width/img.Height*newH
		    
		    g.DrawImage(img, (g.Width-newW)/2, 0, newW, newH)
		    
		  else
		    
		    newW = g.Width
		    newH = img.Height/img.Width*newW
		    
		    g.DrawImage(img, 0, (g.Height-newH)/2, newW, newH)
		    
		  end if
		  
		  
		  
		  ' ObjC Declare to get a ref to a class by its name
		  Declare Function objc_getClass lib "/usr/lib/libobjc.dylib" (aClassName As CString) as Ptr
		  ' Here is the corresponding Xojo call
		  dim theUIColorClassRef As Ptr =  objc_getClass("UIColor")
		  
		  ' UIKit Declare to create a color object
		  Declare Function decl_GetcolorWithPatternImage Lib "UIKit.framework" selector "colorWithPatternImage:" (UIColorClassRef As Ptr, imgRef As Ptr) As Ptr
		  ' Here is the corresponding Xojo call, where we create a flashy green color
		  Dim myUIColorObject As ptr = decl_GetcolorWithPatternImage(theUIColorClassRef, img.Handle)
		  
		  ' UIKit Declare to get a reference to a View from its ViewController
		  Declare Function decl_GetView lib "UIKit.framework" selector "view" (aUIViewController As Ptr) As Ptr
		  ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		  dim myViewPtr As Ptr = decl_GetView(v.Handle)
		  
		  ' UIKit Declare to set the backgound color of a View
		  Declare Sub decl_SetBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' Here is the corresponding Xojo call
		  decl_SetBackgroundColor(myViewPtr, myUIColorObject)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320726F756E6420636F726E65727320746F206120436F6E7461696E6572436F6E74726F6C
		Sub SetCornerRadiusXC(extends cc as iOSContainerControl, radius As Double)
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(cc.Handle)
		  
		  
		  
		  Declare Sub setCornerRadius Lib "QuartzCore.framework" selector "setCornerRadius:" (id As ptr, value As CGFloat)
		  
		  setCornerRadius layer, radius
		  
		  Declare Sub clipsToBounds Lib "UIKit.framework" selector "setClipsToBounds:" (id As ptr, value As Boolean)
		  clipsToBounds(cc.Handle, True)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDisplayMode(Extends scr As iOSSplitView, mode As ViewExtensionsXC.UISplitViewControllerDisplayMode)
		  //Changes the SplitView in portrait mode
		  
		  Declare Sub setPreferredDisplayMode Lib "UIKit" _
		  selector "setPreferredDisplayMode:" (obj As Ptr, mode As UISplitViewControllerDisplayMode)
		  
		  setPreferredDisplayMode(scr.ViewControllerHandle, mode)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFrameXC(extends tb As iOSToolButton, frame As ExtensionsXC.xcCGRect)
		  #Pragma unused tb
		  #pragma unused frame
		  
		  Break
		  //TODO major Doesn't work
		  
		  #If False
		    
		    Declare Sub setFrame Lib "UIKit.framework" selector "setFrame:" (obj_id As ptr, frame As ExtensionsXC.xcCGRect)
		    Declare Function view_ Lib "UIKit.framework" selector "view" (obj_id As ptr) As ptr
		    
		    
		    Dim tbview As ptr = view_(tb.Handle)
		    
		    setFrame(tbview, frame)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetHideNavBarOnSwipeXC(extends v as iOSView, hide As Boolean)
		  
		  
		  
		  declare function navigationBar lib "UIKit.framework" selector "navigationBar" (obj_ref as ptr) as ptr
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  declare sub hidesBarsOnSwipe lib "UIKit.framework" selector "setHidesBarsOnSwipe:" (navcontroller as ptr, value as Boolean)
		  
		  hidesBarsOnSwipe(navigationControllerRef, hide)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLargeTitleDisplayMode(Extends v As iOSView, mode As ViewExtensionsXC.LargeTitleDisplayMode)
		  
		  
		  Static sSystemVersion As Double
		  
		  //Get sSystemVersion only once
		  If sSystemVersion = 0.0 Then
		    
		    Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		    Declare Function currentDevice_ Lib "UIKit.framework" selector "currentDevice" (clsRef As ptr) As ptr
		    Declare Function systemversion_ Lib "UIKit.framework" selector "systemVersion" (obj_id As ptr) As CFStringRef
		    Dim device As Ptr = currentDevice_(NSClassFromString("UIDevice"))
		    Dim systemVersion As Text = systemversion_(device)
		    
		    Try
		      sSystemVersion = Double.FromText(systemVersion)
		    Catch
		    End Try
		    
		  End If
		  
		  //Use new API
		  If sSystemVersion >= 11.0 Then
		    
		    Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		    
		    Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		    Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		    
		    Dim navBar As ptr = navigationBar(navigationControllerRef)
		    
		    Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		    Dim navItem As ptr = navigationItem(v.Handle)
		    
		    
		    Declare Sub largeTitleDisplayMode Lib "UIKit.framework" selector "setLargeTitleDisplayMode:" (obj_id As ptr, value As LargeTitleDisplayMode)
		    largeTitleDisplayMode(navItem, mode)
		    
		  Else
		    
		    
		    
		    //Nothing
		    'Break
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473206C61726765207469746C657320746F206120566965772028694F5331312B29
		Sub SetLargeTitlesXC(extends v As iOSView, value As Boolean, displayMode as LargeTitleDisplayMode = LargeTitleDisplayMode.automatic)
		  
		  Static sSystemVersion As Double
		  
		  //Get sSystemVersion only once
		  if sSystemVersion = 0.0 then
		    
		    Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		    Declare Function currentDevice_ Lib "UIKit.framework" selector "currentDevice" (clsRef As ptr) As ptr
		    Declare Function systemversion_ Lib "UIKit.framework" selector "systemVersion" (obj_id As ptr) As CFStringRef
		    Dim device As Ptr = currentDevice_(NSClassFromString("UIDevice"))
		    Dim systemVersion As Text = systemversion_(device)
		    
		    Try
		      sSystemVersion = Double.FromText(systemVersion)
		    Catch
		    End Try
		    
		  End If
		  
		  //Use new API
		  If sSystemVersion >= 11.0 Then
		    
		    Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		    
		    Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		    Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		    
		    Dim navBar As ptr = navigationBar(navigationControllerRef)
		    
		    Declare Sub prefersLargeTitles Lib "UIKit.framework" selector "setPrefersLargeTitles:" (obj_id As ptr, value As Boolean)
		    prefersLargeTitles(navBar, value)
		    
		    Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		    Dim navItem As ptr = navigationItem(v.Handle)
		    
		    Dim mode As LargeTitleDisplayMode
		    mode = displayMode
		    
		    Declare Sub largeTitleDisplayMode Lib "UIKit.framework" selector "setLargeTitleDisplayMode:" (obj_id As ptr, value As LargeTitleDisplayMode)
		    largeTitleDisplayMode(navItem, mode)
		    
		  Else
		    
		    
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865204E617669676174696F6E2062617220636F6C6F722E20536574204461726B20746F205472756520696620796F752077616E74207468652074696D6520616E64207374617475732062617220746F206265207768697465
		Sub SetNavBarColorXC(extends v as iOSView, barColor as color, buttonColor as color, translucent as boolean = false, Dark As Boolean = False)
		  
		  
		  declare function NSClassFromString lib "Foundation" (classname as CFStringRef) as ptr
		  Declare Function keyWindow Lib "UIKit.framework" selector "keyWindow" (obj_ref As ptr) As ptr
		  declare function sharedApplication lib "UIKit.framework" selector "sharedApplication" (obj_ref as ptr) as ptr
		  declare function rootViewController lib "UIKit.framework" selector "rootViewController" (obj_ref as ptr) as ptr
		  declare function navigationBar lib "UIKit.framework" selector "navigationBar" (obj_ref as ptr) as ptr
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  'dim sApp as ptr = sharedApplication(NSClassFromString("UIApplication"))
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  
		  declare sub setTintColor lib "UIKit.framework" selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  setTintColor navBar, new UIColor(buttonColor)
		  
		  declare sub setBarTintColor lib "UIKit.framework" selector "setBarTintColor:" (id as ptr, UIColor as Ptr)
		  If barColor.Alpha = 255 then
		    setBarTintColor navBar, UIColor.ClearColor
		  Else
		    setBarTintColor navBar, new UIColor(barColor)
		  End If
		  
		  
		  declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr, value as Boolean)
		  setTranslucent navBar, translucent
		  
		  
		  declare sub setBarStyle lib "UIKit.framework" selector "setBarStyle:" (id as ptr, theStyle as integer)
		  setBarStyle navBar, If(Dark, 1, 0) //UIStatusBarStyleLightContent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207465787420696E20746865204E61766261722E
		Sub SetNavBarTitleColorXC(extends v as iOSView, value As Color)
		  
		  Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		  Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		  Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		  Dim navBar As ptr = navigationBar(navigationControllerRef)
		  
		  Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  Declare Function dictionaryWithObject Lib "Foundation.framework" selector "dictionaryWithObject:forKey:" _
		  (class_id As Ptr, anObject As CFStringRef, key As Ptr) As Ptr
		  
		  
		  
		  Dim constStr As Text = ExtensionsXC.StringConstantXC("UIKit", "NSForegroundColorAttributeName")
		  
		  Dim constRef As CFStringRef = constStr
		  
		  Dim nsDic As Ptr
		  nsDic = DictionaryWithObject(NSClassFromString("NSDictionary"), constRef, New UIColor(value))
		  
		  
		  
		  Declare Sub setTitleTextAttributes Lib "UIKit.framework" selector "setTitleTextAttributes:" _
		  (obj_id As ptr, att As ptr)
		  
		  setTitleTextAttributes(navBar, nsDic)
		  
		  If ExtensionsXC.GetiOSVersionXC >= 11.0 Then
		    
		    Declare Sub setLargeTitleTextAttributes Lib "UIKit.framework" selector "setLargeTitleTextAttributes:" _
		    (obj_id As ptr, att As ptr)
		    
		    setLargeTitleTextAttributes(navBar, nsDic)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320616E20696D61676520696E7374656164206F66204E6176626172207469746C65
		Sub SetNavBarTitleImageXC(extends v as iOSView, image As iOSImage)
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  declare function navigationBar lib "UIKit.framework" selector "navigationBar" (obj_ref as ptr) as ptr
		  declare function topItem lib "UIKit.framework" selector "topItem" (id as ptr) as ptr
		  Declare Sub setTitleView Lib "UIKit.framework" selector "setTitleView:" (id As ptr, UIImage As Ptr)
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  declare Function alloc lib "Foundation" selector "alloc"(classPtr as Ptr) as Ptr
		  Declare function initWithImage lib "UIKit.framework" selector "initWithImage:" (objRef as Ptr, imgRef as Ptr) as Ptr
		  
		  //Reference to Navigation Controller
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  //Ref to NavigationBar
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  
		  //Ref to Title item
		  dim navItem as ptr = topItem(navBar)
		  
		  //Create imageView with the passed image
		  Dim iView As Ptr = initWithImage( alloc( NSClassFromString("UIImageView")), image.Handle)
		  
		  //Set Title item to use the imageView
		  setTitleView(navItem, iView)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNavBarTransparentXC(extends v as iOSView)
		  
		  
		  
		  '[self.navigationController.navigationBar setBackgroundImage:[UIImage new]
		  '                     forBarMetrics:UIBarMetricsDefault];
		  'self.navigationController.navigationBar.shadowImage = [UIImage new];
		  'self.navigationController.navigationBar.translucent = YES;
		  'self.navigationController.view.backgroundColor = [UIColor clearColor];
		  'self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
		  
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As Ptr) As ptr
		  Declare Function init Lib "Foundation.framework" selector "init" (obj_id As ptr) As ptr
		  declare function keyWindow lib "UIKit.framework" selector "keyWindow" (obj_ref as ptr) as ptr
		  declare function sharedApplication lib "UIKit.framework" selector "sharedApplication" (obj_ref as ptr) as ptr
		  declare function rootViewController lib "UIKit.framework" selector "rootViewController" (obj_ref as ptr) as ptr
		  declare function navigationBar lib "UIKit.framework" selector "navigationBar" (obj_ref as ptr) as ptr
		  Declare Function view Lib "UIKit.framework" selector "view" (obj_ref As ptr) As ptr
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  Dim view As ptr = view(navigationControllerRef)
		  
		  
		  Declare sub setBackgroundImage lib "UIKit.framework" selector "setBackgroundImage:forBarMetrics:" (id as ptr, image as ptr, metrics as Integer)
		  setBackgroundImage(navBar, init(alloc(NSClassFromString("UIImage"))) , 0)
		  
		  Declare sub setShadowImage lib "UIKit.framework" selector "setShadowImage:" (id as ptr, image as ptr)
		  setShadowImage(navBar, init(alloc(NSClassFromString("UIImage"))))
		  
		  declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr, value as Boolean)
		  setTranslucent navBar, True
		  
		  
		  declare sub setBarStyle lib "UIKit.framework" selector "setBarStyle:" (id as ptr, theStyle as integer)
		  setBarStyle navBar, 1 //UIStatusBarStyleLightContent
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646473206120626164676520746F206120546162626172
		Sub SetTabBarBadgeXC(extends v As iOSView, ItemIndex As Integer, Badge As Text)
		  
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
		  setBadgeValue(item0, Badge)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520436F6C6F72206F66206120546162426172
		Sub SetTabBarButtonColorXC(extends v as iOSView, buttonColor as color)
		  
		  
		  Declare Function tabbar_ lib "UIKit.framework" selector "tabBar"(o as Ptr) as Ptr
		  
		  
		  dim tb as iOSTabBar=v.ParentTabBar
		  if tb is nil then Return
		  dim h as ptr = tb.ViewControllerHandle
		  
		  dim tabbar as Ptr = tabbar_(h)
		  
		  
		  declare sub setTintColor lib "UIKit.framework" selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  setTintColor tabBar, new UIColor(buttonColor)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865206261636B67726F756E6420636F6C6F72206F66206120546162426172
		Sub SetTabBarColorXC(extends v as iOSView, barColor as color, translucent as boolean = false)
		  
		  
		  Declare Function tabbar_ Lib "UIKit.framework" selector "tabBar"(o As Ptr) As Ptr
		  
		  
		  dim tb as iOSTabBar=v.ParentTabBar
		  if tb is nil then Return
		  dim h as ptr = tb.ViewControllerHandle
		  
		  dim tabbar as Ptr = tabbar_(h)
		  
		  
		  Declare Sub setBarTintColor Lib "UIKit.framework" selector "setBarTintColor:" (id As ptr, UIColor As Ptr)
		  setBarTintColor tabBar, New UIColor(barColor)
		  
		  if translucent then
		    declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr)
		    setTranslucent tabbar
		  end
		  
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

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520636F6C6F72206F66206120546F6F6C627574746F6E
		Sub SetTintColorXC(extends tb As iOSToolButton, value As Color)
		  
		  Declare Sub setTintColor Lib "UIKit.framework" selector "setTintColor:" (id As ptr, UIColor As Ptr)
		  setTintColor tb.handle, New UIColor(value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C20746869732066756E6374696F6E20696620796F7520757365206120636F6D62696E6174696F6E206F66204C617267655469746C657320616E64204C617267655469746C65446973706C61794D6F64652E6E65766572
		Sub SetWindowColorXC(extends app As iOSApplication, value as color)
		  #Pragma unused app
		  
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIKit.UIColor(value)
		  End If
		  
		  Declare Function NSClassFromString Lib "UIKit.framework" (clsName As CFStringRef) As ptr
		  Declare Function sharedApplication Lib "UIKit.framework" selector "sharedApplication" (clsRef As ptr) As ptr
		  Declare Function keyWindow Lib "UIKit.framework" selector "keyWindow" (obj_id As ptr) As ptr
		  
		  Dim myWindowPtr As ptr = keyWindow(sharedApplication(NSClassFromString("UIApplication")))
		  
		  
		  If myWindowPtr = Nil Then
		    Break
		    //this needs to be called from the Activate event, not the Open event
		    Return
		  End If
		  
		  
		  
		  Declare Sub setBackgroundColor Lib UIKitLib selector "setBackgroundColor:" (obj_id As ptr, col As ptr)
		  setBackgroundColor(myWindowPtr, uic)
		  
		  
		End Sub
	#tag EndMethod


	#tag Enum, Name = LargeTitleDisplayMode, Type = Integer, Flags = &h1
		automatic = 0
		  always
		never
	#tag EndEnum

	#tag Enum, Name = UIModalPresentationStyle, Type = Integer, Flags = &h1
		fullscreen = 0
		  pageSheet
		  formSheet
		  currentContext
		  custom
		  overFullScreen
		  overCurrentContext
		  popover
		none = -1
	#tag EndEnum

	#tag Enum, Name = UIModalTransitionStyle, Type = Integer, Flags = &h1
		coverVertical = 0
		  flipHorizontal
		  crossDissolve
		partialCurl
	#tag EndEnum

	#tag Enum, Name = UIRectCorners, Type = Integer, Flags = &h1
		all = 0
		  TopLeft = 1
		  TopRight = 2
		  BottomLeft = 4
		BottomRight = 8
	#tag EndEnum

	#tag Enum, Name = UISplitViewControllerDisplayMode, Type = Integer, Flags = &h1
		Automatic
		  PrimaryHidden
		  AllVisible
		PrimaryOverlay
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
