[![XOJO 2022r4](https://img.shields.io/badge/XOJO-2022r4-71AF3A.svg)](https://www.xojo.com/)
[![Platforms iOS](https://img.shields.io/badge/Platforms-iOS-lightgray.svg?style=flat)](http://www.apple.com/ios/)
[![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

# iOSDesignExtensions
A set of 100+ UI extensions for Xojo iOS framework.

## Currently implemented extensions

### MobileButton
* Adjust font size to fit width
* Adjust font for ContentSize category
* Backdrop
* Background color
* Border color
* Border width
* Button insets
* Button tiled background
* Corner radius
* Image insets
* Image
* Line break
* Number of lines
* Role (iOS14+)
* Text alignment
* Title edge insets

### MobileHTMLViewer
* Load Page
* Load File
* Execute Javascript
* User Agent

### MobileLabel
* Adjust font size to fit width
* Adjust font for ContentSize category

### MobileUIControl
* Background color
* Animate Alpha (requires iOSKit)
* Get Frame
* Get Bounds
* Remove Constraints
* Alpha value
* Tint Color
* Stretch to Parent
* Stretch to View

### MobileProgressWheel
* Indicator style

### MobileSwitch
* On Tint Color

### MobileScrollableArea
* Flash scroll indicators
* Scroll position
* Scroll to
* Bounces
* Indicator style
* Paging
* Disable scroll
* Scrolls to top
* Horizontal scrollbar visibility
* Vertical scrollbar visibility

### MobileSegmentedButton
* Adjust font size to fit width
* Remove borders
* Selected color
* Text color

### iOSMobileTable
* Flash Scroll indicators
* Disable selection
* Bounces
* Hide remaining separators
* Indicator style
* Disable scroll
* Scrolls to top
* Separator style
* Unselect table row
* Scrollbar visibility
* Section Header Top Padding

### MobileTableCellData
* Adjust font size to fit width
* Background color
* Text color
* Detail text color
* Change font
* Selected background color
* Selected text color
* Selected detail text color
* Selection style
* Text break mode
* Detail text break mode
* Text alignment

### iOSMobileTableRowAction
* Background color
* Icon

### MobileTextField
* Auto-capitalization
* Auto-correction
* Border color
* Border style
* Border width
* Corner radius
* Keyboard appearance
* Keyboard Type
* Icon
* Placeholder color (requires iOSKit)
* Return key
* Text indentation

### MobileTextArea
* Auto-correction
* Scroll position (get and set)
* Scrolls to top
* Scroll to specific range in text
* Selected range (get and set)

### MobileScreen
* Add big progress in center
* Close modal view
* Hide Navbar shadow
* Show modal view
* Background color
* Background image
* Corner radius
* Hide navbar on swipe
* Large Title display mode
* Large Titles
* Navbar color
* Navbar title image
* Right To Left Display (Boolean)
* Tabbar badge
* Tabbar Button color
* Tabbar color
* Pop to root view
* Preferred content size
* Pushto and hide Tabbar

### MobileSlider
* Maximum track color
* Minimum track color
* Maximum value image
* Minimum value image
* Thumb color

### MobileToolbarButton
* Tint color

### iOSSplitView
* Display mode
* Display Fraction
* Display Width


### Misc
* Recolor an icon with a mask
* Original Image to prevent it from rendering in the tint color
* Masked version of an image


## History

### Version 2.4.2 - Released 2024-02-14
* New SplitViewExtensionsXC module for iOSSplitView
* Fixed a few methods 

### Version 2.4 - Released 2024-01-09
* New AppExtensionsXC.SetBrightnessXC
* Fixed a few methods especially SetNavBarTitleColorXC and SetNavBarTintColorXC

### Version 2.3 - Released 2022-12-14
* Updated for Xojo 2022r4
* Added some Accessibility extensions

### Version 2.2 - Released 2022-07-14
* New ViewExtensionsXC.TransitionWithViewDurationOptionsXC
* New ViewExtensionsXC.AnimateWithDurationXC
* New ViewExtensionsXC.LayoutIfNeededXC
* New ControlExtensionsXC.SetUserInterfaceStyleXC
* New ImageExtensionsXC.SaveToCameraRollXC

### Version 2.1.2 - Released 2022-02-02
* New iOSMobileTable.SetScrollbarVisibleXC
* New iOSMobileTable.SetSectionHeaderTopPaddingXC
* New MobileScrollableArea.SetHorizontalScrollbarVisibleXC
* New MobileScrollableArea.SetVerticalScrollbarVisibleXC


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
* Fixed Me.SetBackgroundColorXC(aColorGroup)
* Fixed Me.SetBorderColorXC(aColorGroup)
* Fixed some deprecations

### Version 2.0.2 - Released 2021-09-17
* New TableSearchExtensionsXC module
* Added iOSMobileTable.GetSearchFilterIndexXC
* Added iOSMobileTable.SetSearchActiveXC
* Added iOSMobileTable.SetSearchFieldTextColorXC (iOS13+)
* Added iOSMobileTable.SetSearchFiltersXC


### Version 2.0.1 - Released 2021-04-20
* Added NotificationContent.UseDefaultSoundXC

### Version 2.0 - Released 2021-04-15
* Now compatible with Xojo 2020r2+ (iOS Framework API 2)
* Added MobileButton.SetRoleXC
* Added MobileDateTimePicker.SetDatePickerStyleXC
* Added MobileTableCellData.SetTextAlignmentXC
* Added MobileScreen.SetNavBarTintColorXC
* Added MobileScreen.SetNavBarTranslucentXC
* Added MobileScreen.PushToSafariControllerXC

### Version 1.8.1 - Released 2021-03-26
* Added unit testing of each extension method

### Version 1.5.1 - Released 2019-02-21
* New HTMLViewer Function LoadFileXC
* New iOSView Function isRightToLeftXC

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

Copy-paste the iOSDesignExtensions folder into your project.

Most controls will then have additional methods, all ending with "XC"

Contact: https://www.jeremieleroy.com/contact.php

Feel free to ask for feature requests!

Made with ❤️ in France

Jeremie LEROY
