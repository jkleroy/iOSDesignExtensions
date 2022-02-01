#tag Class
Protected Class App
Inherits MobileApplication
	#tag CompatibilityFlags = TargetIOS
	#tag Event
		Sub Opening()
		  
		  'Dim b As new iosbitmap(10, 10, 2)
		  'Dim g As iosgraphics = b.Graphics
		  'g.Scale(b.Scale, b.Scale)
		  'g.FillColor = &cFF0000
		  'g.FillRect(0, 0, g.Width, g.Height)
		  '
		  'Dim aniOSImage As iOSImage = b.image
		  'Dim p As Picture = Picture.FromHandle(aniOSImage.Handle)
		  '
		  'Dim r As RGBSurface = p.RGBSurface
		  '
		  'Dim val As color = r.Pixel(0, 0)
		  '
		  'Dim p2 As new Picture(10, 10)
		  '
		  'Dim img2 As iOSImage = p2
		End Sub
	#tag EndEvent


	#tag Note, Name = README
		## History
		
		### Version 2.1.1 - Released 2022-02-01
		* Fixed MobileScreen.SetNavBarTitleColorXC
		* Fixed MobileScreen.PushToHideTabBarXC
		
		### Version 2.1 - Released 2022-01-09
		* New MobileScreen.ShowSheetXC
		* New SliderExtensionsXC
		* New MobileScreen.SetPreferredContentSizeXC method
		* Updated MobileLabel.AdjustsFontForContentSizeCategoryXC to allow for custom fonts
		
		### Version 2.0.5 - Released 2021-10-26
		* New MobileLabel.AdjustsFontForContentSizeCategoryXC
		* New MobileButton.AdjustsFontForContentSizeCategoryXC
		* Fixed MobileUIControl.SetAlphaValueXC
		
		
		### Version 2.0.4 - Released 2021-09-28
		* Fixed MobileScreen.SetNavBarTitleImageXC
		* New example for MobileScreen.SetNavBarTitleImageXC
		* Updated HTMLViewerExtensionsXC.ExecuteJavascriptXC to use a Variant
		* Improved HTMLViewer example
		
		### Version 2.0.3 - Released 2021-09-26
		** Fixed Me.SetBackgroundColorXC(aColorGroup)
		** Fixed Me.SetBorderColorXC(aColorGroup)
		** Fixed some deprecations
		
		### Version 2.0.2 - Released 2021-09-17
		** New TableSearchExtensionsXC module
		** Added iOSMobileTable.GetSearchFilterIndexXC
		** Added iOSMobileTable.SetSearchActiveXC
		** Added iOSMobileTable.SetSearchFieldTextColorXC (iOS13+)
		** Added iOSMobileTable.SetSearchFiltersXC
		
		
		### Version 2.0.1 - Released 2021-04-20
		** Added NotificationContent.UseDefaultSoundXC
		
		### Version 2.0 - Released 2021-04-15
		* Now compatible with Xojo 2020r2+ (iOS Framework API 2)
		** Added MobileButton.SetRoleXC
		** Added MobileDateTimePicker.SetDatePickerStyleXC
		** Added MobileTableCellData.SetTextAlignmentXC
		** Added MobileScreen.SetNavBarTintColorXC
		** Added MobileScreen.SetNavBarTranslucentXC
		** Added MobileScreen.PushToSafariControllerXC
		
		
		### Version 1.?? - Released 2020-??
		* Added iOSDatePicker.SetTextColorXC
		
		### Version 1.7.0 - Released 2019-11-19
		* New ImageExtensionsXC module
		
		### Version 1.6.0 - Released 2019-04-06
		* New iOSView hidekeyboard
		* Fix iOSControl.SetAlphaValueXC for iOS 12.2 (Requires iOSKit)
		
		### Version 1.5.1 - Released 2019-02-21
		* New HTMLViewer Function LoadFileXC
		* New iOSView Function isRightToLeftXC
		
		* Version 1.5.0 - Released 2019-01-31
		** Added Layer Extensions 
		1. Border Color
		2. Border Width
		3. Corner Radius
		4. Shadow
		
		
		* Version 1.4.0 - Released 2018-08-15
		** Added HTMLViewer Extensions 
		1. ExecuteJavascript
		2. LoadPage
		3. UserAgent 
		
		** Added TableExtensionsXC.SetSeparatorColorXC
		
		* Version 1.3.1 - Released 2018-05-30
		** Added iOSView.SetToolBarBackgroundColorXC 
		and
		** Added iOSView.SetToolBarColorXC
		
		* Version 1.3.1 - Released 2018-05-30
		** Added App.SetWindowColorXC
		
		* Version 1.3 - Released 2018-05-27
		** Added scrolling functions to iOSTextArea
		
		* Version 1.2 - Released 2018-05-??
		** Added an app icon
		** Fixed GetBoundsXC function
		** Renamed ScrollViewExtensionsXCXC to ScrollViewExtensionsXC
		** Removed Modal Curl transition
		** AdjustFontSizeToFitWidthXC now has an optional lines property to set the amount of lines to display
		** SetTabPageXC to set the current page in a TabBar view
		** GetTabPageXC to get the current page index in a TabBar view
		** SetNavBarTitleColorXC to set the color of the text in the navbar
		** GetiOSVersionXC returns the current iOS version number
		** Table.GetScrollPositionXC returns the current section/row position
		
		* Version 1.1 - Released 2018-05-10
		** New modal transition options
		
		
		* Version 1.0 - Released 2018-04-26
		
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


	#tag Constant, Name = isBeta, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant


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
		#tag ViewProperty
			Name="_LaunchOptionsHandled"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
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
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IconBadgeNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="currentSplitMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ViewExtensionsXC.UISplitViewControllerDisplayMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - Automatic"
				"1 - secondaryOnly"
				"2 - oneBesideSecondary"
				"3 - oneOverSecondary"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
