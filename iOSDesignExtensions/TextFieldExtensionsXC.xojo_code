#tag Module
Protected Module TextFieldExtensionsXC
	#tag Method, Flags = &h1
		Protected Function CGRectMake(x As CGFloat, y As CGFloat, width As CGFloat, height As CGFloat) As ExtensionsXC.xcCGRect
		  
		  Dim origin As ExtensionsXC.xcCGPoint
		  origin.x = x
		  origin.y = y
		  
		  Dim size As ExtensionsXC.xcCGSize
		  size.width = width
		  size.height = height
		  
		  Dim rect As ExtensionsXC.xcCGRect
		  rect.origin = origin
		  rect.rsize = size
		  
		  Return rect
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526574756E73207468652063757272656E74207363726F6C6C20706F736974696F6E
		Function GetScrollPositionXC(extends area As MobileTextArea) As Point
		  
		  Dim offset As point
		  
		  
		  Declare Function ContentOffset_ Lib "UIKit.framework" selector "contentOffset" (obj_id As ptr) As ExtensionsXC.xcCGPoint
		  Dim pt As ExtensionsXC.xcCGPoint = ContentOffset_(area.Handle)
		  offset = New Point(pt.x, pt.y)
		  
		  
		  
		  Return offset
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSelectedRangeXC(Extends area As MobileTextArea) As TextFieldExtensionsXC.NSRangeXC
		  
		  
		  Declare Function selectedRange_ Lib "UIKit.framework" selector "selectedRange" (obj_id As ptr) As NSRangeXC
		  
		  Return selectedRange_(area.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746F207468652070726F76696465642072616E676520706F736974696F6E2E
		Sub ScrollToRangeXC(Extends area As MobileTextArea, range As TextFieldExtensionsXC.NSRangeXC)
		  
		  
		  
		  Declare Sub scrollRangeToVisible_ Lib "UIKit.framework" selector "scrollRangeToVisible:" (obj_id As ptr, rng As NSRangeXC)
		  
		  scrollRangeToVisible_(area.Handle, range)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5363726F6C6C7320746F2074686520646566696E656420636F6F7264696E61746573
		Sub ScrollToXC(extends area As MobileTextArea, point As Point, animated As Boolean = True)
		  
		  Declare Sub setContentOffsetAnimated Lib "UIKit.framework" selector "setContentOffset:animated:" (id As ptr, value As ExtensionsXC.xcCGPoint, animated As Boolean)
		  
		  Dim pt As ExtensionsXC.xcCGPoint
		  pt.x = point.X
		  pt.y = point.Y
		  
		  setContentOffsetAnimated(area.Handle, pt, animated)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAutocapitalizationTypeXC(extends field As MobileTextField, value As TextFieldExtensionsXC.UITextAutocapitalizationType)
		  
		  Declare Sub setAutocapitalizationType_ Lib "UIKit.framework" selector "setAutocapitalizationType:" (obj_id As ptr, value As UITextAutoCapitalizationType)
		  
		  setAutocapitalizationType_(field.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAutocorrectionTypeXC(extends area As MobileTextArea, value As TextFieldExtensionsXC.UITextAutocorrectionType)
		  
		  Declare Sub setAutocorrectionType_ Lib "UIKit.framework" selector "setAutocorrectionType:" (obj_id As ptr, value As UITextAutocorrectionType)
		  
		  setAutocorrectionType_(area.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAutocorrectionTypeXC(extends field As MobileTextField, value As TextFieldExtensionsXC.UITextAutocorrectionType)
		  
		  Declare Sub setAutocorrectionType_ Lib "UIKit.framework" selector "setAutocorrectionType:" (obj_id As ptr, value As UITextAutocorrectionType)
		  
		  setAutocorrectionType_(field.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderColorXC(extends field As MobileTextField, C As Color)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(field.Handle)
		  
		  Dim uic As UIKit.UIColor
		  
		  if c.Alpha = 255 then
		    uic = UIKit.UIColor.ClearColor
		  else
		    uic = new UIKit.UIColor(c)
		  end if
		  
		  declare sub setBorderColor lib "UIKit.framework" selector "setBorderColor:" (obj_id as ptr, col as ptr)
		  setBorderColor(layer, uic.CGColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderStyleXC(extends field As MobileTextField, style As TextFieldExtensionsXC.UITextFieldBorderStyle)
		  
		  
		  declare sub setBorderStyle lib "UIKit.framework" selector "setBorderStyle:" (obj_id as ptr, st as UITextFieldBorderStyle)
		  setBorderStyle(field.handle, style)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderWidthXC(extends field As MobileTextField, value As Double)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(field.Handle)
		  
		  
		  Declare Sub setBorderWidth Lib "UIKit.framework" selector "setBorderWidth:" (obj_id As ptr, w As CGFloat)
		  setBorderWidth(layer, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetKeyboardAppearanceXC(extends field As MobileTextField, appearance As TextFieldExtensionsXC.UIKeyboardAppearance)
		  Declare Sub setKeyboardAppearance Lib "UIKit.framework" selector "setKeyboardAppearance:" (id As ptr, value As UIKeyboardAppearance)
		  setKeyboardAppearance field.Handle, appearance
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetKeyboardTypeXC(extends field As MobileTextField, type As TextFieldExtensionsXC.UIKeyboardType)
		  Declare Sub setKeyboardType Lib "UIKit.framework" selector "setKeyboardType:" (id As ptr, value As UIKeyboardType)
		  setKeyboardType field.Handle, type
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLeftViewIconXC(extends field As MobileTextField, image As Picture, addIndent As Double = 0.0)
		  
		  dim spacerView As new MobileImageViewer
		  spacerView.Image = image
		  
		  Declare Function frame_ Lib "UIKit.framework" selector "frame" (obj_id As ptr) As ExtensionsXC.xcCGRect
		  Declare sub setFrame_ lib "UIKit.framework" selector "setFrame:" (obj_id as ptr, frame as ExtensionsXC.xcCGRect)
		  
		  
		  
		  'Dim rect As new Foundation.NSRect(0, 0, indent, 10)
		  'spacerView = new UIKit.UIView(rect)
		  
		  declare sub setLeftViewMode lib "UIKit.framework" selector "setLeftViewMode:" (id as ptr, value as UITextFieldViewMode)
		  setLeftViewMode field.Handle, UITextFieldViewMode.always
		  
		  declare sub setLeftView lib "UIKit.framework" selector "setLeftView:" (id as ptr, view as ptr)
		  setLeftView field.Handle, spacerView.Handle
		  
		  
		  Dim frame As ExtensionsXC.xcCGRect = frame_(spacerView.handle)
		  frame.rsize.width = image.Width + addIndent
		  frame.rsize.height = image.Height
		  
		  setFrame_(spacerView.handle, frame)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520706C616365686F6C64657220616E6420706C616365686F6C64657220636F6C6F722E2052657175697265732055494B6974
		Sub SetPlaceholderColorXC(extends field As MobileTextField, placeholder As String, aColor As Color)
		  
		  if placeholder.trim.isEmpty then Return
		  
		  #If ExtensionsXC.kUseUIKit
		    
		    'NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Some Text" attributes:@{ NSForegroundColorAttributeName : [UIColor redColor] }];
		    
		    
		    
		    Declare Function alloc Lib FoundationLib selector "alloc" (clsRef As ptr) As ptr
		    Declare Function NSClassFromString Lib FoundationLib (clsName As CFStringRef) As ptr
		    Declare Function initWithStringattributes Lib FoundationLib  selector "initWithString:attributes:" (id As ptr, astring As CFStringRef, attDict As ptr) As ptr
		    Declare Sub attributedPlaceholder_ Lib FoundationLib selector "setAttributedPlaceholder:" (id As ptr, attribString As ptr) 
		    
		    Dim uic As New UIColor(aColor)
		    
		    
		    Dim keyStr As New NSString(Foundation.StringConstant("UIKit", "NSForegroundColorAttributeName"))
		    'Dim keyStr2 As new NSString(Foundation.StringConstant("UIKit", "NSBackgroundColorAttributeName"))
		    
		    
		    Dim keys() As Foundation.NSObject
		    Dim vals() As Foundation.NSObject
		    
		    keys.Append keyStr
		    vals.Append uic
		    
		    'keys.Append keyStr2
		    'vals.Append UIColor.Red
		    
		    
		    Dim attrib As New Foundation.NSMutableDictionary(keys, vals)
		    
		    Dim attribString As ptr = initWithStringattributes(alloc(NSClassFromString("NSAttributedString")), placeholder, attrib)
		    
		    
		    
		    attributedPlaceholder_(field.Handle, attribString)
		    
		  #else
		    #Pragma Unused field
		    #Pragma Unused placeholder
		    #Pragma Unused aColor
		    
		  #EndIf
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetReturnKeyTypeXC(extends field as MobileTextField, value as TextFieldExtensionsXC.UIReturnKeyType)
		  
		  Declare Sub setReturnKeyType_ Lib "UIKit.framework" selector "setReturnKeyType:" (obj_id As ptr, value As UIReturnKeyType)
		  setReturnKeyType_(field.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446566696E657320696620746865205465787441726561207363726F6C6C7320746F2074686520746F70207768656E20646F75626C652074617070696E67207468652074696D6520696E64696361746F722E
		Sub SetScrollsToTopXC(extends area As MobileTextArea, value As Boolean)
		  
		  Declare Sub scrollsToTop_ Lib "UIKit.framework" selector "setScrollsToTop:" (obj_id As ptr, value As Boolean)
		  
		  scrollsToTop_(area.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectedRangeXC(Extends area As MobileTextArea, range As TextFieldExtensionsXC.NSRangeXC)
		  
		  
		  Declare Sub selectedRange Lib "UIKit.framework" selector "setSelectedRange:" (obj_id As ptr, rng As NSRangeXC)
		  Declare Sub select_ Lib "UIKit.framework" selector "select:" (obj_id As ptr, obj As ptr)
		  
		  
		  select_(area.Handle, area.Handle)
		  
		  selectedRange(area.Handle, range)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTabOrder(extends field As MobileTextField, value As Integer)
		  
		  declare sub setTag lib "UIKit.framework" selector "setTag:" (obj_id as ptr, value as Integer)
		  
		  SetTag(field.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Sub SetTextIndentXC(extends field as MobileTextField, indent As Integer)
		  
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Function initWithFrame Lib "Foundation.framework" selector "initWithFrame:" (obj_id As ptr, frame As ExtensionsXC.xcCGRect) As ptr
		  Dim frame As ExtensionsXC.xcCGRect
		  
		  
		  frame.origin.x = 0
		  frame.origin.y = 0
		  frame.rsize.width = indent
		  frame.rsize.height = 10
		  
		  
		  
		  Dim spacerView As ptr = initwithFrame(alloc(NSClassFromString("UIView")), frame)
		  
		  
		  'Dim spacerView As UIKit.UIView
		  'Dim rect As New Foundation.NSRect(0, 0, indent, 10)
		  'spacerView = new UIKit.UIView(rect)
		  
		  declare sub setLeftViewMode lib "UIKit.framework" selector "setLeftViewMode:" (id as ptr, value as UITextFieldViewMode)
		  setLeftViewMode field.Handle, UITextFieldViewMode.always
		  
		  declare sub setLeftView lib "UIKit.framework" selector "setLeftView:" (id as ptr, view as ptr)
		  setLeftView field.Handle, spacerView
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		
		For better organization of code, this module has MobileTextField and MobileTextArea extensions.
		
	#tag EndNote


	#tag Structure, Name = NSRangeXC, Flags = &h1
		loc As Uinteger
		len As UInteger
	#tag EndStructure


	#tag Enum, Name = UIKeyboardAppearance, Type = Integer, Flags = &h1
		default = 0
		  dark
		light
	#tag EndEnum

	#tag Enum, Name = UIKeyboardType, Type = Integer, Flags = &h1
		default = 0
		  asciiCapable
		  numbersAndPunctuation
		  URL
		  numberPad
		  phonePad
		  namePhonePad
		  emailAddress
		  decimalPad
		  twitter
		  webSearch
		asciiCapableNumberPad
	#tag EndEnum

	#tag Enum, Name = UIReturnKeyType, Type = Integer, Flags = &h1
		Default
		  Go
		  Google
		  Join
		  Next_
		  Route
		  Search
		  Send
		  Yahoo
		  Done
		  EmergencyCall
		Continue_
	#tag EndEnum

	#tag Enum, Name = UITextAutocapitalizationType, Type = Integer, Flags = &h1
		None = 0
		  Words
		  Sentences
		AllCharacters
	#tag EndEnum

	#tag Enum, Name = UITextAutocorrectionType, Type = Integer, Flags = &h1
		Default = 0
		  No
		Yes
	#tag EndEnum

	#tag Enum, Name = UITextFieldBorderStyle, Type = Integer, Flags = &h1
		None = 0
		  Line
		  Bezel
		RoundedRect
	#tag EndEnum

	#tag Enum, Name = UITextFieldViewMode, Type = Integer, Flags = &h1
		never
		  whileEditing
		  unlessEditing
		always
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
