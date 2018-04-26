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

	#tag Method, Flags = &h0
		Sub SetAutocapitalizationTypeXC(extends txt As iOSTextField, value As TextFieldExtensionsXC.UITextAutocapitalizationType)
		  
		  Declare Sub setAutocapitalizationType_ Lib "UIKit.framework" selector "setAutocapitalizationType:" (obj_id As ptr, value As UITextAutoCapitalizationType)
		  
		  setAutocapitalizationType_(txt.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAutocorrectionTypeXC(extends txt As iOSTextField, value As TextFieldExtensionsXC.UITextAutocorrectionType)
		  
		  Declare Sub setAutocorrectionType_ Lib "UIKit.framework" selector "setAutocorrectionType:" (obj_id As ptr, value As UITextAutocorrectionType)
		  
		  setAutocorrectionType_(txt.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderColorXC(extends txt As iOSTextField, C As Color)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(txt.Handle)
		  
		  Dim uic As New UIColor(C)
		  
		  declare sub setBorderColor lib "UIKit.framework" selector "setBorderColor:" (obj_id as ptr, col as ptr)
		  setBorderColor(layer, uic.CGColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderStyleXC(extends field As iOSTextField, style As UITextFieldBorderStyle)
		  
		  
		  declare sub setBorderStyle lib "UIKit.framework" selector "setBorderStyle:" (obj_id as ptr, st as UITextFieldBorderStyle)
		  setBorderStyle(field.handle, style)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderWidthXC(extends txt As iOSTextField, value As Double)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(txt.Handle)
		  
		  
		  Declare Sub setBorderWidth Lib "UIKit.framework" selector "setBorderWidth:" (obj_id As ptr, w As CGFloat)
		  setBorderWidth(layer, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetCornerRadiusXC(extends txt As iOSTextField, radius As Double)
		  
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(txt.Handle)
		  
		  
		  
		  Declare Sub setCornerRadius Lib "QuartzCore.framework" selector "setCornerRadius:" (id As ptr, value As CGFloat)
		  
		  setCornerRadius layer, radius
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetKeyboardAppearanceXC(extends field As iOSTextField, appearance As TextFieldExtensionsXC.UIKeyboardAppearance)
		  Declare Sub setKeyboardAppearance Lib "UIKit.framework" selector "setKeyboardAppearance:" (id As ptr, value As UIKeyboardAppearance)
		  setKeyboardAppearance field.Handle, appearance
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetKeyboardTypeXC(extends field As iOSTextField, type As TextFieldExtensionsXC.UIKeyboardType)
		  Declare Sub setKeyboardType Lib "UIKit.framework" selector "setKeyboardType:" (id As ptr, value As UIKeyboardType)
		  setKeyboardType field.Handle, type
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLeftViewIconXC(extends field as iOSTextField, image As iOSImage, addIndent As Integer = 0)
		  
		  dim spacerView As new iOSImageView
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
		Sub SetPlaceholderColorXC(extends field as iOSTextField, placeholder As Text, aColor As Color)
		  
		  #If kUseUIKit
		    'NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"Some Text" attributes:@{ NSForegroundColorAttributeName : [UIColor redColor] }];
		    
		    
		    
		    declare function alloc lib "Foundation.framework" selector "alloc" (clsRef as ptr) as ptr
		    declare function NSClassFromString lib "Foundation.framework" (clsName as CFStringRef) as ptr
		    "Foundation.framework"WithStringattributes Lib "Foundation.framework"  selector "initWithString:attributes:" (id As ptr, astring As CFStringRef, attDict As ptr) As ptr
		    declare sub attributedPlaceholder_ lib "Foundation.framework" selector "setAttributedPlaceholder:" (id as ptr, attribString as ptr) 
		    
		    Dim uic As new UIColor(aColor)
		    
		    
		    Dim keyStr As new NSString(Foundation.StringConstant("UIKit.framework", "NSForegroundColorAttributeName"))
		    'Dim keyStr2 As new NSString(Foundation.StringConstant("UIKit.framework", "NSBackgroundColorAttributeName"))
		    
		    
		    Dim keys() As ptr
		    Dim vals() As ptr
		    
		    keys.Append keyStr
		    vals.Append uic
		    
		    'keys.Append keyStr2
		    'vals.Append UIColor.Red
		    
		    Declare Function initWithObjects Lib FoundationLib selector "initWithObjects:forKeys:" (obj_id As Ptr, objects As Ptr, keys As Ptr) As Ptr
		    
		    Dim keysArray As New NSArray(keys)
		    Dim objectsArray As New NSArray(objects)
		    
		    Super.Constructor(initWithObjects(Allocate(NSClassFromString("NSMutableDictionary")), objectsArray, keysArray))
		    
		    #Pragma unused keys
		    #Pragma unused objects
		    
		    
		    needsExtraRelease = True
		    
		    
		    Dim attrib As New Foundation.NSMutableDictionary(keys, vals)
		    
		    Dim attribString As ptr = initWithStringattributes(alloc(NSClassFromString("NSAttributedString")), placeholder, attrib)
		    
		    
		    
		    attributedPlaceholder_(field.Handle, attribString)
		    
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetReturnKeyTypeXC(extends txt as iOSTextField, value as TextFieldExtensionsXC.UIReturnKeyType)
		  
		  Declare Sub setReturnKeyType_ Lib "UIKit.framework" selector "setReturnKeyType:" (obj_id As ptr, value As UIReturnKeyType)
		  setReturnKeyType_(txt.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Sub SetTextIndentXC(extends field as iOSTextField, indent As Integer)
		  
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
