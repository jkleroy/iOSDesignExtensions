#tag Module
Protected Module ViewControllerExtensionsXC
	#tag Method, Flags = &h0
		Sub HideContentUnavailableXC(extends v As MobileScreen)
		  // https://developer.apple.com/documentation/uikit/uicontentunavailableconfiguration-c.class?language=objc
		  
		  // Apply to the view controller
		  
		  if ExtensionsXC.GetiOSVersionXC < 17.0 then Return
		  
		  Declare Sub setContentUnavailableConfiguration Lib "UIKit" Selector "setContentUnavailableConfiguration:" (obj As Ptr, config As Ptr)
		  
		  setContentUnavailableConfiguration(v.ViewControllerHandle, nil)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowEmptyContentUnavailableXC(extends v As MobileScreen, label As String, secondaryLabel As String = "", image As Picture = nil, imageColor As Color = &c000000FF)
		  // https://developer.apple.com/documentation/uikit/uicontentunavailableconfiguration-c.class?language=objc
		  
		  // iOS 17+ only
		  if ExtensionsXC.GetiOSVersionXC < 17.0 then Return
		  
		  declare function NSClassFromString lib "Foundation" (clsName as CFStringRef) as ptr
		  
		  // + (instancetype) loadingConfiguration;
		  Declare Function loadingConfiguration Lib "UIKit" Selector "loadingConfiguration" (cls As Ptr) As Ptr
		  Declare Function emptyConfiguration Lib "UIKit" Selector "emptyConfiguration" (cls As Ptr) As Ptr
		  Declare Function searchConfiguration Lib "UIKit" Selector "searchConfiguration" (cls As Ptr) As Ptr
		  
		  Var config As Ptr = emptyConfiguration(NSClassFromString("UIContentUnavailableConfiguration"))
		  
		  
		  // Optional: set text
		  Declare Sub setText Lib "UIKit" Selector "setText:" (obj As Ptr, value As CFStringRef)
		  setText(config, label)
		  
		  // Optional: set secondaryText
		  Declare Sub setSecondaryText Lib "UIKit" Selector "setSecondaryText:" (obj As Ptr, value As CFStringRef)
		  if secondaryLabel.IsEmpty = False then
		    setSecondaryText(config, secondaryLabel)
		  end if
		  
		  
		  // ── Image ──────────────────────────────────────────────────────────────
		  
		  // Set the image directly
		  Declare Sub setImage Lib "UIKit" Selector "setImage:" (obj As Ptr, image As Ptr)
		  
		  if image <> nil then
		    setImage(config, image.Handle)
		  end if
		  
		  // Optional: tint color on imageProperties
		  Declare Function imageProperties Lib "UIKit" Selector "imageProperties" (obj As Ptr) As Ptr
		  Declare Sub setTintColor Lib "UIKit" Selector "setTintColor:" (obj As Ptr, color As Ptr)
		  
		  Var imgProps As Ptr = imageProperties(config)
		  if imageColor.Alpha <> 255 then
		    setTintColor(imgProps, ExtensionsXC.UIColorFromColor(imageColor))
		  end if
		  
		  // Optional: symbol configuration on imageProperties
		  // Declare Sub setPreferredSymbolConfiguration Lib "UIKit" Selector "setPreferredSymbolConfiguration:" (obj As Ptr, symConfig As Ptr)
		  // setPreferredSymbolConfiguration(imgProps, yourSymbolConfig)
		  
		  
		  
		  
		  // Apply to the view controller
		  // viewController is a ptr to your UIViewController
		  Declare Sub setContentUnavailableConfiguration Lib "UIKit" Selector "setContentUnavailableConfiguration:" (obj As Ptr, config As Ptr)
		  
		  setContentUnavailableConfiguration(v.ViewControllerHandle, config)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowLoadingContentUnavailableXC(extends v As MobileScreen, label As String = "", secondaryLabel As String = "", spinnerColor As Color = &c000000FF)
		  // https://developer.apple.com/documentation/uikit/uicontentunavailableconfiguration-c.class?language=objc
		  
		  // iOS 17+ only
		  if ExtensionsXC.GetiOSVersionXC < 17.0 then Return
		  
		  declare function NSClassFromString lib "Foundation" (clsName as CFStringRef) as ptr
		  
		  // + (instancetype) loadingConfiguration;
		  Declare Function loadingConfiguration Lib "UIKit" Selector "loadingConfiguration" (cls As Ptr) As Ptr
		  Declare Function emptyConfiguration Lib "UIKit" Selector "emptyConfiguration" (cls As Ptr) As Ptr
		  Declare Function searchConfiguration Lib "UIKit" Selector "searchConfiguration" (cls As Ptr) As Ptr
		  
		  Var config As Ptr = loadingConfiguration(NSClassFromString("UIContentUnavailableConfiguration"))
		  
		  
		  // Optional: set text
		  Declare Sub setText Lib "UIKit" Selector "setText:" (obj As Ptr, value As CFStringRef)
		  if label.IsEmpty = False then
		    setText(config, label)
		  end if
		  
		  // Optional: set secondaryText
		  Declare Sub setSecondaryText Lib "UIKit" Selector "setSecondaryText:" (obj As Ptr, value As CFStringRef)
		  if secondaryLabel.IsEmpty = False then
		    setSecondaryText(config, secondaryLabel)
		  end if
		  
		  
		  // ── Image ──────────────────────────────────────────────────────────────
		  
		  
		  // Optional: tint color on imageProperties
		  Declare Function imageProperties Lib "UIKit" Selector "imageProperties" (obj As Ptr) As Ptr
		  Declare Sub setTintColor Lib "UIKit" Selector "setTintColor:" (obj As Ptr, color As Ptr)
		  
		  Var imgProps As Ptr = imageProperties(config)
		  if spinnerColor.Alpha <> 255 then
		    setTintColor(imgProps, ExtensionsXC.UIColorFromColor(spinnerColor))
		  end if
		  
		  
		  // Apply to the view controller
		  // viewController is a ptr to your UIViewController
		  Declare Sub setContentUnavailableConfiguration Lib "UIKit" Selector "setContentUnavailableConfiguration:" (obj As Ptr, config As Ptr)
		  
		  setContentUnavailableConfiguration(v.ViewControllerHandle, config)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSearchContentUnavailableXC(extends v As MobileScreen, label As String = "", secondaryLabel As String = "", image As Picture = nil, imageColor As Color = &c000000FF)
		  // https://developer.apple.com/documentation/uikit/uicontentunavailableconfiguration-c.class?language=objc
		  
		  // iOS 17+ only
		  if ExtensionsXC.GetiOSVersionXC < 17.0 then Return
		  
		  declare function NSClassFromString lib "Foundation" (clsName as CFStringRef) as ptr
		  
		  // + (instancetype) loadingConfiguration;
		  Declare Function loadingConfiguration Lib "UIKit" Selector "loadingConfiguration" (cls As Ptr) As Ptr
		  Declare Function emptyConfiguration Lib "UIKit" Selector "emptyConfiguration" (cls As Ptr) As Ptr
		  Declare Function searchConfiguration Lib "UIKit" Selector "searchConfiguration" (cls As Ptr) As Ptr
		  
		  Var config As Ptr = searchConfiguration(NSClassFromString("UIContentUnavailableConfiguration"))
		  
		  // Optional: set text
		  Declare Sub setText Lib "UIKit" Selector "setText:" (obj As Ptr, value As CFStringRef)
		  if label.IsEmpty = False then
		    setText(config, label)
		  end if
		  
		  // Optional: set secondaryText
		  Declare Sub setSecondaryText Lib "UIKit" Selector "setSecondaryText:" (obj As Ptr, value As CFStringRef)
		  if secondaryLabel.IsEmpty = False then
		    setSecondaryText(config, secondaryLabel)
		  end if
		  
		  
		  // ── Image ──────────────────────────────────────────────────────────────
		  
		  // Set the image directly
		  Declare Sub setImage Lib "UIKit" Selector "setImage:" (obj As Ptr, image As Ptr)
		  
		  if image <> nil then
		    setImage(config, image.Handle)
		  end if
		  
		  // Optional: tint color on imageProperties
		  Declare Function imageProperties Lib "UIKit" Selector "imageProperties" (obj As Ptr) As Ptr
		  Declare Sub setTintColor Lib "UIKit" Selector "setTintColor:" (obj As Ptr, color As Ptr)
		  
		  Var imgProps As Ptr = imageProperties(config)
		  if imageColor.Alpha <> 255 then
		    setTintColor(imgProps, ExtensionsXC.UIColorFromColor(imageColor))
		  end if
		  
		  
		  // Apply to the view controller
		  // viewController is a ptr to your UIViewController
		  Declare Sub setContentUnavailableConfiguration Lib "UIKit" Selector "setContentUnavailableConfiguration:" (obj As Ptr, config As Ptr)
		  
		  setContentUnavailableConfiguration(v.ViewControllerHandle, config)
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
