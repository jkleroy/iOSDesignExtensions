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
* Add Done button to clear focus
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

### Version 2.6.1 - Released 2025-05-14
* New animation method ViewExtensionsXC.AnimateWithDurationOptionsXC
* New Animation options in ViewExtensionsXC.UIViewAnimationOptions
* See examples in "Animations"

### Version 2.6 - Released 2025-02-12
* New TabbarExtensionsXC.SetTabBarTitleXC
* New MapViewerExtensionsXC
* New ControlExtensionsXC.SetBackgroundGradientXC
* New TabbarExtensionsXC.SetTabBarUnselectedColorXC
* New TableExtensionsXC.SetAllowsSelectionDuringEditingXC

### Version 2.5.3 - Released 2025-02-03
* New TextFieldExtensionsXC.AddDoneToolbarButtonXC (for TextField)

### Version 2.5.2 - Released 2024-12-07
* New ViewExtensionsXC.SetOverrideUserInterfaceStyleXC method
* New ControlExtensionsXC.SetOverrideUserInterfaceStyleXC method

### Version 2.5.1 - Released 2024-07-16
* New TextFieldExtensionsXC.AddDoneToolbarButtonXC

### Version 2.5 - Released 2024-07-08
* New TableExtensions.SelectRowXC metho
* New AppExtensionsXC.idleTimerDisabled property



### Version 2.0 - Released 2021-04-15
* Now compatible with Xojo 2020r2+ (iOS Framework API 2)
* Added MobileButton.SetRoleXC
* Added MobileDateTimePicker.SetDatePickerStyleXC
* Added MobileTableCellData.SetTextAlignmentXC
* Added MobileScreen.SetNavBarTintColorXC
* Added MobileScreen.SetNavBarTranslucentXC
* Added MobileScreen.PushToSafariControllerXC


### Version 1.0 - Released 2018-04-26

Copy-paste the iOSDesignExtensions folder into your project.

Most controls will then have additional methods, all ending with "XC"

Contact: https://www.jeremieleroy.com/contact.php

Feel free to ask for feature requests!

Made with ❤️ in France

Jeremie LEROY
