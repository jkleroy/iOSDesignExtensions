#tag Module
Protected Module ViewExtensionsXC
	#tag Method, Flags = &h0, Description = 416464732061206269672070726F6772657373576865656C20696E207468652063656E746572206F662074686520436F6E7461696E6572
		Sub AddProgressXC(extends mView As MobileContainer, ByRef Progress As MobileProgressWheel, DarkBackground As Boolean = False)
		  
		  Progress = new MobileProgressWheel
		  
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
		Sub AddProgressXC(extends mView As MobileScreen, ByRef Progress As MobileProgressWheel, DarkBackground As Boolean = False)
		  
		  Progress = New MobileProgressWheel
		  
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
		Sub DismissViewControllerXC(extends v as MobileScreen, animated as Boolean = True, callback as iOSBlock = nil)
		  
		  Declare Sub dismissViewController_ Lib "UIKit.framework" _
		  Selector "dismissViewControllerAnimated:completion:" _
		  (viewController As Ptr, animated As Boolean, completion As Ptr)
		  
		  
		  If callback <> Nil Then
		    dismissViewController_(v.ViewControllerHandle, animated, callback.handle)
		  Else
		    dismissViewController_(v.ViewControllerHandle, animated, Nil)
		  End If
		  
		  //Completely close it
		  Declare Sub removeFromParentViewController Lib "UIKit" selector "removeFromParentViewController" (obj As ptr)
		  removeFromParentViewController(v.ViewControllerHandle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HideKeyboardXC(extends v As MobileScreen)
		  Dim myViewPtr As Ptr
		  
		  #if XojoVersion >= 2020.02
		    myViewPtr = v.Handle
		    
		  #else
		    ' UIKit Declare to get a reference to a View from its ViewController
		    Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		    ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		    myViewPtr = decl_GetView(v.Handle)
		  #endif
		  
		  Declare Sub endEditing Lib "UIKit" selector "endEditing:" (obj_id As ptr, value As Boolean)
		  endEditing(myViewPtr, True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HideNavBarShadowXC(extends v As MobileScreen)
		  
		  
		  
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
		  'Dim view As ptr = view(navigationControllerRef)
		  
		  
		  Declare Sub setBackgroundImage Lib "UIKit.Framework" selector "setBackgroundImage:forBarMetrics:" (id As ptr, image As ptr, metrics As Integer)
		  setBackgroundImage(navBar, init(alloc(NSClassFromString("UIImage"))) , 0)
		  
		  Declare sub setShadowImage lib "UIKit.framework" selector "setShadowImage:" (id as ptr, image as ptr)
		  setShadowImage(navBar, init(alloc(NSClassFromString("UIImage"))))
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732054727565206966207468652063757272656E7420646973706C61792069732052696768742D546F2D4C65667420284172616269632C204865627265772E2E2E29
		Function isRightToLeftXC(extends view As MobileScreen) As Boolean
		  
		  
		  Const UIUserInterfaceLayoutDirectionLeftToRight = 0
		  Const UIUserInterfaceLayoutDirectionRightToLeft = 1
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  
		  
		  Declare function userInterfaceLayoutDirection_ lib "UIKit" selector "userInterfaceLayoutDirectionForSemanticContentAttribute:" _
		  (obj_ref as ptr, attribute as ptr) as UIUserInterfaceLayoutDirection
		  
		  Declare function semanticContentAttribute_ lib "UIKit" selector "semanticContentAttribute" (obj_ref as ptr) as ptr
		  
		  
		  
		  Dim myViewPtr As Ptr
		  
		  #if XojoVersion >= 2020.02
		    myViewPtr = view.Handle
		    
		  #else
		    ' UIKit Declare to get a reference to a View from its ViewController
		    Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		    ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		    myViewPtr = decl_GetView(view.Handle)
		  #endif
		  
		  if userInterfaceLayoutDirection_(NSClassFromString("UIView"), semanticContentAttribute_(myViewPtr)) = UIUserInterfaceLayoutDirection.rightToLeft then
		    
		    Return True
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4F70656E7320616E2055524C20696E2074686520536166617269436F6E74726F6C6C6572
		Sub PushToSafariControllerXC(extends v as MobileScreen, url as String, BarTintColor as Color = &c000000FF, ControlTintColor as Color = &c000000FF)
		  //New in version 2.0
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  
		  declare function URLWithString_ lib "Foundation.framework" selector "URLWithString:" (clsRef as ptr, URLString as CFStringRef) as ptr
		  
		  Declare function initWithURL_ lib "SafariServices.framework" selector "initWithURL:" (obj as ptr, url as ptr) as ptr
		  Declare Sub presentViewController Lib "UIKit.framework" _
		  Selector "presentViewController:animated:completion:" _
		  (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		  
		  
		  Dim nUrl as ptr = URLWithString_(NSClassFromString("NSURL"), url)
		  Dim svc As ptr = initWithURL_(alloc(NSClassFromString("SFSafariViewController")), nUrl)
		  
		  
		  if BarTintColor.Alpha <> 255 then
		    Declare sub preferredBarTintColor_ lib "UIKit.framework" selector "setPreferredBarTintColor:" (obj as ptr, value as ptr)
		    
		    
		    Dim uic As UIKit.UIColor
		    uic = new UIKit.UIColor(BarTintColor)
		    
		    
		    preferredBarTintColor_(svc, uic)
		  end if
		  
		  if ControlTintColor.Alpha <> 255 then
		    Declare sub preferredControlTintColor_ lib "UIKit.framework" selector "setPreferredControlTintColor:" (obj as ptr, value as ptr)
		    
		    Dim uic As UIKit.UIColor
		    uic = new UIKit.UIColor(ControlTintColor)
		    
		    
		    preferredControlTintColor_(svc, uic)
		  end if
		  
		  presentViewController(v.ViewControllerHandle, svc, True, nil)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( deprecated = "Use MobileScreen.ShowModal instead" )  Sub PushToShowModalDissolveXC(extends parent As MobileScreen, v As MobileScreen, style As ViewExtensionsXC.UIModalPresentationStyle = ViewExtensionsXC.UIModalPresentationStyle.fullscreen, Animate As Boolean = True, callback As iOSBlock = Nil)
		  
		  
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
		Attributes( deprecated = "Use MobileScreen.ShowModal instead" )  Sub PushToShowModalFlipXC(extends parent As MobileScreen, v As MobileScreen, style As ViewExtensionsXC.UIModalPresentationStyle = ViewExtensionsXC.UIModalPresentationStyle.fullscreen, Animate As Boolean = True, callback As iOSBlock = Nil)
		  
		  
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
		Attributes( deprecated = "Use MobileScreen.ShowModal instead" )  Sub PushToShowModalXC(extends parent As MobileScreen, v As MobileScreen, style As ViewExtensionsXC.UIModalPresentationStyle = ViewExtensionsXC.UIModalPresentationStyle.automatic, Animate As Boolean = True, callback As iOSBlock = Nil, fullModal As Boolean = False)
		  
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function initWithRootViewController_ Lib "Foundation" selector "initWithRootViewController:" (obj_id As ptr, rootViewController As ptr) As ptr
		  Declare Sub presentViewController Lib "UIKit.framework" _
		  Selector "presentViewController:animated:completion:" _
		  (parentView As Ptr, viewControllerToPresent As Ptr, animated As Boolean, completion As Ptr)
		  Declare Sub modalPresentationStyle_ Lib "UIKit.framework" selector "setModalPresentationStyle:" (obj_id As ptr, modalPresentationStyle As UIModalPresentationStyle)
		  
		  
		  
		  Dim navController As ptr = initWithRootViewController_( alloc(NSClassFromString("UINavigationController")), v.ViewControllerHandle ) 
		  
		  if (XojoVersion < 2019.03 or ExtensionsXC.GetiOSVersionXC < 13.0) and style = UIModalPresentationStyle.automatic then
		    style = UIModalPresentationStyle.formSheet
		  end if
		  
		  modalPresentationStyle_(navController, style)
		  
		  
		  if fullModal and ExtensionsXC.GetiOSVersionXC >= 13.0 then
		    Declare sub setModalInPresentation lib "UIKit.framework" Selector "setModalInPresentation:" (obj_id as ptr, value as Boolean)
		    setModalInPresentation(navController, true)
		  end if
		  
		  If callback <> Nil Then
		    Break
		    //This code might fail
		  end if
		  
		  If callback Is Nil Then
		    presentViewController(parent.ViewControllerHandle, navController, Animate, Nil)
		  Else
		    presentViewController(parent.ViewControllerHandle, navController, Animate, callback.handle)
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C65732F44697361626C657320616E696D6174696F6E73206F6E206120766965772E
		Sub SetAnimationsEnabledXC(extends v As MobileScreen, value As Boolean)
		  #Pragma Unused v
		  
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare sub setAnimationsEnabled lib "UIKit.framework" selector "setAnimationsEnabled:" (obj as ptr, value as boolean)
		  
		  setAnimationsEnabled(NSClassFromString("UIView"), value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620612056696577
		Sub SetBackgroundColorXC(extends v As MobileScreen, c As Color)
		  
		  
		  Dim uic As UIKit.UIColor
		  
		  if c.Alpha = 255 then
		    uic = UIKit.UIColor.ClearColor
		  else
		    uic = new UIKit.UIColor(c)
		  end if
		  
		  
		  
		  Dim myViewPtr As Ptr
		  
		  #if XojoVersion >= 2020.02
		    myViewPtr = v.Handle
		    
		  #else
		    ' UIKit Declare to get a reference to a View from its ViewController
		    Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		    ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		    myViewPtr = decl_GetView(v.Handle)
		  #endif
		  
		  ' UIKit Declare to set the backgound color of a View
		  Declare Sub decl_SetBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' Here is the corresponding Xojo call
		  decl_SetBackgroundColor(myViewPtr, uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( deprecated = "Use a background MobileImageView" )  Sub SetBackgroundImageXC(extends v As MobileScreen, img As Picture)
		  
		  
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
		  
		  Dim myViewPtr As Ptr
		  
		  #if XojoVersion >= 2020.02
		    myViewPtr = v.Handle
		    
		  #else
		    ' UIKit Declare to get a reference to a View from its ViewController
		    Declare Function decl_GetView Lib "UIKit" selector "view" (aUIViewController As Ptr) As Ptr
		    ' Here is the corresponding Xojo call (View.Self returns a ViewController)
		    myViewPtr = decl_GetView(v.Handle)
		  #endif
		  
		  ' UIKit Declare to set the backgound color of a View
		  Declare Sub decl_SetBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (aUIView As Ptr, aUIColor As Ptr)
		  ' Here is the corresponding Xojo call
		  decl_SetBackgroundColor(myViewPtr, myUIColorObject)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDisplayModeXC(Extends scr As iOSSplitView, mode As ViewExtensionsXC.UISplitViewControllerDisplayMode)
		  //Changes the SplitView in portrait mode
		  
		  Declare Sub setPreferredDisplayMode Lib "UIKit" _
		  selector "setPreferredDisplayMode:" (obj As Ptr, mode As UISplitViewControllerDisplayMode)
		  
		  setPreferredDisplayMode(scr.ViewControllerHandle, mode)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFrameXC(extends tb As MobileToolbarButton, frame As ExtensionsXC.xcCGRect)
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

	#tag Method, Flags = &h0, Description = 44697361626C657320737769706520646F776E206F6E206D6F64616C207669657773
		Sub SetFullModalXC(extends v As MobileScreen)
		  If ExtensionsxC.GetiOSVersionXC >= 13.0 then
		    Declare sub setModalInPresentation lib "UIKit.framework" Selector "setModalInPresentation:" (obj_id as ptr, value as Boolean)
		    setModalInPresentation(v.ViewControllerHandle, true)
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetHideNavBarOnSwipeXC(extends v As MobileScreen, hide As Boolean)
		  
		  
		  
		  declare function navigationBar lib "UIKit.framework" selector "navigationBar" (obj_ref as ptr) as ptr
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  declare sub hidesBarsOnSwipe lib "UIKit.framework" selector "setHidesBarsOnSwipe:" (navcontroller as ptr, value as Boolean)
		  
		  hidesBarsOnSwipe(navigationControllerRef, hide)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetHidesBackButtonXC(extends v As MobileScreen, value As Boolean)
		  
		  
		  
		  Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		  
		  Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		  'Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		  
		  'Dim navBar As ptr = navigationBar(navigationControllerRef)
		  
		  Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		  Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		  
		  
		  Declare Sub hidesBackButton Lib "UIKit.framework" selector "setHidesBackButton:" (obj_id As ptr, value As Boolean)
		  hidesBackButton(navItem, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLargeTitleDisplayModeXC(extends v As MobileScreen, mode As ViewExtensionsXC.LargeTitleDisplayMode)
		  
		  
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
		Sub SetLargeTitlesXC(extends v as MobileScreen, value as Boolean, displayMode as ViewExtensionsXC.LargeTitleDisplayMode = ViewExtensionsXC.LargeTitleDisplayMode.automatic)
		  
		  Dim sSystemVersion as Double = ExtensionsXC.GetiOSVersionXC
		  
		  //Use new API
		  If sSystemVersion >= 11.0 Then
		    
		    Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		    
		    Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		    Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		    
		    Dim navBar As ptr = navigationBar(navigationControllerRef)
		    
		    Declare Sub prefersLargeTitles Lib "UIKit.framework" selector "setPrefersLargeTitles:" (obj_id As ptr, value As Boolean)
		    prefersLargeTitles(navBar, value)
		    
		    Declare Function navigationItem Lib "UIKit.framework" selector "navigationItem" (obj_ref As ptr) As ptr
		    Dim navItem As ptr = navigationItem(v.ViewControllerHandle)
		    
		    Dim mode As LargeTitleDisplayMode
		    mode = displayMode
		    
		    Declare Sub largeTitleDisplayMode Lib "UIKit.framework" selector "setLargeTitleDisplayMode:" (obj_id As ptr, value As LargeTitleDisplayMode)
		    largeTitleDisplayMode(navItem, mode)
		    
		  Else
		    #Pragma Unused v
		    #Pragma Unused value
		    #Pragma Unused displayMode
		    
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865204E617669676174696F6E2062617220636F6C6F722E20536574204461726B20746F205472756520696620796F752077616E74207468652074696D6520616E64207374617475732062617220746F206265207768697465
		Sub SetNavBarColorXC(extends v As MobileScreen, barColor As color, buttonColor As color, titleColor As Color, translucent As boolean = false, Dark As Boolean = False)
		  
		  
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
		  
		  Dim uic As UIColor
		  If barColor.Alpha = 255 then
		    uic = UIColor.ClearColor
		  Else
		    uic = new UIColor(barColor)
		  End If
		  setBarTintColor(navBar, uic)
		  
		  
		  declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr, value as Boolean)
		  setTranslucent navBar, translucent
		  
		  
		  declare sub setBarStyle lib "UIKit.framework" selector "setBarStyle:" (id as ptr, theStyle as integer)
		  setBarStyle navBar, If(Dark, 1, 0) //UIStatusBarStyleLightContent
		  
		  
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13 then
		    
		    declare function init lib "Foundation.framework" selector "init" (obj_id as ptr) as ptr
		    Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		    
		    
		    Dim navBarAppearance as ptr = init(alloc(NSClassFromString("UINavigationBarAppearance")))
		    
		    Declare sub setBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (obj as ptr, UIColor as ptr)
		    
		    If barColor.Alpha = 255 then
		      setBackgroundColor navBarAppearance, UIColor.ClearColor
		    Else
		      setBackgroundColor navBarAppearance, new UIColor(barColor)
		    End If
		    
		    
		    Declare Function dictionaryWithObject Lib "Foundation.framework" selector "dictionaryWithObject:forKey:" _
		    (class_id As Ptr, anObject As ptr, key As CFStringRef) As Ptr
		    
		    
		    Dim constStr As String = ExtensionsXC.StringConstantXC("UIKit", "NSForegroundColorAttributeName")
		    
		    Dim nsDic As Ptr
		    nsDic = DictionaryWithObject(NSClassFromString("NSDictionary"), New UIColor(titleColor), constStr)
		    
		    
		    Declare Sub setTitleTextAttributes Lib "UIKit.framework" selector "setTitleTextAttributes:" _
		    (obj_id As ptr, att As ptr)
		    setTitleTextAttributes(navBarAppearance, nsDic)
		    
		    
		    Declare Sub setLargeTitleTextAttributes Lib "UIKit.framework" selector "setLargeTitleTextAttributes:" _
		    (obj_id As ptr, att As ptr)
		    setLargeTitleTextAttributes(navBarAppearance, nsDic)
		    
		    
		    
		    Declare sub setStandardAppearance lib "UIKit.framework" selector "setStandardAppearance:" (obj as ptr, value as ptr)
		    Declare sub setScrollEdgeAppearance lib "UIKit.framework" selector "setScrollEdgeAppearance:" (obj as ptr, value as ptr)
		    setStandardAppearance(navBar, navBarAppearance)
		    setScrollEdgeAppearance(navBar, navBarAppearance)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865204E617669676174696F6E2062617220636F6C6F722E20536574204461726B20746F205472756520696620796F752077616E74207468652074696D6520616E64207374617475732062617220746F206265207768697465
		Sub SetNavBarTintColorXC(extends screen As MobileScreen, tintColor As Color)
		  //New in version 2.0
		  
		  declare function navigationBar lib "UIKit.framework" selector "navigationBar" (obj_ref as ptr) as ptr
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(screen.ViewControllerHandle)
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  
		  declare sub setTintColor lib "UIKit.framework" selector "setTintColor:" (id as ptr, UIColor as Ptr)
		  setTintColor navBar, new UIColor(tintColor)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207465787420696E20746865204E61766261722E
		Sub SetNavBarTitleColorXC(extends v As MobileScreen, value As Color)
		  
		  Declare Function navigationBar Lib "UIKit.framework" selector "navigationBar" (obj_ref As ptr) As ptr
		  Declare Function navigationController Lib "UIKit.framework" selector "navigationController" (viewController As ptr) As ptr
		  Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		  Dim navBar As ptr = navigationBar(navigationControllerRef)
		  
		  Declare Function NSClassFromString Lib "Foundation" (name As CFStringRef) As Ptr
		  Declare Function dictionaryWithObject Lib "Foundation.framework" selector "dictionaryWithObject:forKey:" _
		  (class_id As Ptr, anObject As CFStringRef, key As Ptr) As Ptr
		  
		  
		  
		  Dim constStr As String = ExtensionsXC.StringConstantXC("UIKit", "NSForegroundColorAttributeName")
		  
		  Dim constRef As CFStringRef = constStr
		  
		  Dim nsDic As Ptr
		  nsDic = DictionaryWithObject(NSClassFromString("NSDictionary"), constRef, New UIColor(value))
		  
		  
		  
		  Declare Sub setTitleTextAttributes Lib "UIKit.framework" selector "setTitleTextAttributes:" _
		  (obj_id As ptr, att As ptr)
		  
		  setTitleTextAttributes(navBar, nsDic)
		  
		  If ExtensionsXC.GetiOSVersionXC >= 11.0 Then
		    
		    Declare Sub setLargeTitleTextAttributes Lib "UIKit.framework" selector "setLargeTitleTextAttributes:" _
		    (obj_id As ptr, att As ptr)
		    
		    'setLargeTitleTextAttributes(navBar, nsDic)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320616E20696D61676520696E7374656164206F66204E6176626172207469746C65
		Sub SetNavBarTitleImageXC(extends v As MobileScreen, image As Picture)
		  
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
		Sub SetNavBarTranslucentXC(extends v As MobileScreen, value As Boolean)
		  
		  //New in version 2.0
		  
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
		  
		  
		  declare function navigationController lib "UIKit.framework" selector "navigationController" (viewController as ptr) as ptr
		  dim navigationControllerRef as ptr = navigationController(v.ViewControllerHandle)
		  
		  dim navBar as ptr = navigationBar(navigationControllerRef)
		  'Dim view As ptr = view(navigationControllerRef)
		  
		  
		  
		  declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr, value as Boolean)
		  setTranslucent navBar, value
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNavBarTransparentXC(extends v As MobileScreen)
		  
		  
		  
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
		  'Dim view As ptr = view(navigationControllerRef)
		  
		  
		  Declare sub setBackgroundImage lib "UIKit.framework" selector "setBackgroundImage:forBarMetrics:" (id as ptr, image as ptr, metrics as Integer)
		  setBackgroundImage(navBar, init(alloc(NSClassFromString("UIImage"))) , 0)
		  
		  Declare sub setShadowImage lib "UIKit.framework" selector "setShadowImage:" (id as ptr, image as ptr)
		  setShadowImage(navBar, init(alloc(NSClassFromString("UIImage"))))
		  
		  declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr, value as Boolean)
		  setTranslucent navBar, True
		  
		  
		  declare sub setBarStyle lib "UIKit.framework" selector "setBarStyle:" (id as ptr, theStyle as integer)
		  setBarStyle navBar, 1 //UIStatusBarStyleLightContent
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13 then
		    
		    Declare function standardAppearance lib "UIKit.framework" selector "standardAppearance" (obj as ptr) as ptr
		    Dim navBarAppearance as ptr = standardAppearance(navBar)
		    
		    Declare sub setBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (obj as ptr, UIColor as ptr)
		    
		    setBackgroundColor navBarAppearance, UIColor.ClearColor
		    
		    declare sub configureWithTransparentBackground lib "UIKit.framework" selector "configureWithTransparentBackground" (obj as ptr)
		    configureWithTransparentBackground(navBarAppearance)
		    
		    Declare sub setStandardAppearance lib "UIKit.framework" selector "setStandardAppearance:" (obj as ptr, value as ptr)
		    Declare sub setScrollEdgeAppearance lib "UIKit.framework" selector "setScrollEdgeAppearance:" (obj as ptr, value as ptr)
		    setStandardAppearance(navBar, navBarAppearance)
		    setScrollEdgeAppearance(navBar, navBarAppearance)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652053746174757320626172207465787420636F6C6F722E
		Attributes( Deprecated = "Use App.SetStatusBarStyleXC instead" )  Sub SetStatusBarStyleXC(extends v As MobileScreen, style As AppExtensionsXC.UIStatusBarStyle)
		  #Pragma Unused v
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function sharedApplication Lib "UIKit" Selector "sharedApplication" (obj As Ptr) As Ptr
		  Declare sub setStatusBarStyle lib "UIKit" selector "setStatusBarStyle:" (obj as ptr, style as AppExtensionsXC.UIStatusBarStyle)
		  
		  Dim sharedApp As Ptr = sharedApplication(NSClassFromString("UIApplication"))
		  setStatusBarStyle(sharedApp, style)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E6765732074686520636F6C6F72206F66206120546F6F6C627574746F6E
		Sub SetTintColorXC(extends tb As MobileToolbarButton, value As Color)
		  
		  Declare Sub setTintColor Lib "UIKit.framework" selector "setTintColor:" (id As ptr, UIColor As Ptr)
		  setTintColor tb.handle, New UIColor(value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865206261636B67726F756E6420636F6C6F72206F66206120546162426172
		Sub SetToolBarBackgroundColorXC(extends v as MobileScreen, barColor as color, translucent as boolean = false)
		  
		  
		  Declare Function toolbar_ Lib "UIKit.framework" selector "toolbar" (o As Ptr) As Ptr
		  
		  Declare Function navigationController Lib "UIKit" selector "navigationController" (viewController As ptr) As ptr
		  Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		  
		  
		  Dim toolbar As Ptr = toolbar_(navigationControllerRef)
		  
		  
		  Declare Sub setBarTintColor Lib "UIKit.framework" selector "setBarTintColor:" (id As ptr, UIColor As Ptr)
		  setBarTintColor toolbar, New UIColor(barColor)
		  
		  if translucent then
		    declare sub setTranslucent lib "UIKit.framework" selector "setTranslucent:" (id as ptr)
		    setTranslucent toolbar
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E67657320746865206261636B67726F756E6420636F6C6F72206F66206120546162426172
		Sub SetToolBarColorXC(extends v as MobileScreen, barColor as color)
		  
		  
		  Declare Function toolbar_ Lib "UIKit.framework" selector "toolbar" (o As Ptr) As Ptr
		  
		  Declare Function navigationController Lib "UIKit" selector "navigationController" (viewController As ptr) As ptr
		  Dim navigationControllerRef As ptr = navigationController(v.ViewControllerHandle)
		  
		  
		  Dim toolbar As Ptr = toolbar_(navigationControllerRef)
		  
		  
		  Declare Sub tintColor_ Lib "UIKit.framework" selector "setTintColor:" (obj_id As ptr, tintColor As ptr)
		  
		  tintColor_ toolbar, New UIColor(barColor)
		  
		  
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
		automatic = -2
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
		Automatic = 0
		  secondaryOnly
		  oneBesideSecondary
		oneOverSecondary
	#tag EndEnum

	#tag Enum, Name = UIUserInterfaceLayoutDirection, Type = Integer, Flags = &h1
		leftToRight
		rightToLeft
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
