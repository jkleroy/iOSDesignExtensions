#tag Class
Protected Class App
Inherits IOSApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Note, Name = README
		## History
		
		### Version 1.5.0 - Released 2019-01-31
		* Added Layer Extensions 
		1. Border Color
		2. Border Width
		3. Corner Radius
		4. Shadow
		* Fixed crash on iPad
		
		### Version 1.4.0 - Released 2018-08-15
		* Added HTMLViewer Extensions (compatible with UIWebView (<Xojo 2018r2) and WKWebview (>=Xojo 2018r2)
		1. ExecuteJavascript
		2. LoadPage
		3. UserAgent 
		
		### Version 1.3.1 - Released 2018-05-30
		* Added iOSView.SetToolBarBackgroundColorXC 
		and
		* Added iOSView.SetToolBarColorXC
		
		### Version 1.3.1 - Released 2018-05-30
		* Added App.SetWindowColorXC
		
		### Version 1.3 - Released 2018-05-27
		* Added scrolling functions to iOSTextArea
		
		### Version 1.2 - Released 2018-05-??
		* Added an app icon
		* Fixed GetBoundsXC function
		* Renamed ScrollViewExtensionsXCXC to ScrollViewExtensionsXC
		* Removed Modal Curl transition
		* AdjustFontSizeToFitWidthXC now has an optional lines property to set the amount of lines to display
		* SetTabPageXC to set the current page in a TabBar view
		* GetTabPageXC to get the current page index in a TabBar view
		* SetNavBarTitleColorXC to set the color of the text in the navbar
		* GetiOSVersionXC returns the current iOS version number
		* Table.GetScrollPositionXC returns the current section/row position
		
		### Version 1.1 - Released 2018-05-10
		* New modal transition options
		
		
		### Version 1.0 - Released 2018-04-26
		
		Copy-paste the iOSExtensions folder into your project.
		
		Most controls will then have additional methods, all ending with "XC"
		
		Contact: https://www.jeremieleroy.com/contact.php
		
		Feel free to ask for feature requests!
		
		Made with ❤️ in France
		
		Jeremie LEROY
	#tag EndNote


	#tag Property, Flags = &h0
		currentSplitMode As ViewExtensionsXC.UISplitViewControllerDisplayMode
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="currentSplitMode"
			Group="Behavior"
			Type="ViewExtensionsXC.UISplitViewControllerDisplayMode"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
