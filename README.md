[![XOJO 2018r1.1](https://img.shields.io/badge/XOJO-2018r1-71AF3A.svg)](https://www.xojo.com/)
[![Platforms iOS](https://img.shields.io/badge/Platforms-iOS-lightgray.svg?style=flat)](http://www.apple.com/ios/)
[![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

# iOSDesignExtensions
A set of 100+ UI extensions for Xojo iOS framework.

## Currently implemented extensions

### iOSButton
* Adjust font size to fit width
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
* Text alignment
* Title edge insets

### iOSHTMLViewer
* Load Page
* Load File
* Execute Javascript
* User Agent

### iOSLabel
* Adjust font size to fit width

### iOSControl
* Background color
* Animate Alpha (requires iOSKit)
* Get Frame
* Get Bounds
* Remove Constraints
* Alpha value
* Tint Color
* Stretch to Parent
* Stretch to View

### iOSProgressWheel
* Indicator style

### iOSSwitch
* On Tint Color

### iOSScrollableArea
* Flash scroll indicators
* Scroll position
* Scroll to
* Bounces
* Indicator style
* Paging
* Disable scroll
* Scrolls to top

### iOSSegmentedControl
* Adjust font size to fit width
* Remove borders
* Selected color
* Text color

### iOSTable
* Flash Scroll indicators
* Disable selection
* Bounces
* Hide remaining separators
* Indicator style
* Disable scroll
* Scrolls to top
* Separator style
* Unselect table row

### iOSTableCell
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

### iOSTableRowAction
* Background color
* Icon

### iOSTextField
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

### iOSTextArea
* Auto-correction
* Scroll position (get and set)
* Scrolls to top
* Scroll to specific range in text
* Selected range (get and set)

### iOSView
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
* Pushto and hide Tabbar

### iOSToolbutton
* Tint color

### iOSSplitView
* Display mode


### Misc
* Recolor an icon with a mask
* Original Image to prevent it from rendering in the tint color
* Masked version of an image


## History

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

Copy-paste the iOSExtensions folder into your project.

Most controls will then have additional methods, all ending with "XC"

Contact: https://www.jeremieleroy.com/contact.php

Feel free to ask for feature requests!

Made with ❤️ in France

Jeremie LEROY
