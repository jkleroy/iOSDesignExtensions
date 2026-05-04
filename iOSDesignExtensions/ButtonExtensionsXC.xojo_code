#tag Module
Protected Module ButtonExtensionsXC
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontForContentSizeCategoryXC(extends button As MobileButton, textStyle As ControlExtensionsXC.UIFontTextStyle, customFont As Font = nil, maxPointSize As Double = 0.0)
		  Dim label As ptr
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(button.Handle)
		  
		  
		  ControlExtensionsXC.AdjustsFontForContentSizeCategoryXC_internal(label, textStyle, customFont, maxPointSize)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXC(extends bt As MobileButton, lines As Integer = -1)
		  
		  Dim label As ptr
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  If lines > 0 Then
		    Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		    setNumberOfLines label, lines
		  End If
		  
		  Declare Sub setAdjustsFontSizeToFitWidth Lib "UIKit.framework" selector "setAdjustsFontSizeToFitWidth:" (id As ptr, value As Boolean)
		  setAdjustsFontSizeToFitWidth label, True
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsSelectedXC(extends bt As MobileButton) As Boolean
		  
		  
		  
		  // @property (nonatomic, getter=isSelected) BOOL selected;
		  Declare Function getSelected Lib "Foundation" selector "isSelected" (obj as ptr) As Boolean
		  
		  
		  return getSelected(bt.Handle)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206261636B64726F7020696D616765206F662074686520627574746F6E2E
		Sub SetBackdropXC(extends bt as MobileButton, backdrop as Picture)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setBackgroundImage Lib "UIKit" selector "setBackgroundImage:forState:" (obj As ptr, value As ptr, state As Integer)
		  
		  if backdrop is nil then
		    setBackgroundImage(bt.Handle, nil, 0)
		    
		  else
		    Dim bestImage As Picture = ImageExtensionsXC.BestRepresentationXC(backdrop)
		    
		    setBackgroundImage(bt.Handle, bestImage.CopyOSHandle(Picture.HandleType.iOSUIImage), 0)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderWidthXC(extends bt As MobileButton, value As Double)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(bt.Handle)
		  
		  
		  Declare Sub setBorderWidth Lib "UIKit.framework" selector "setBorderWidth:" (obj_id As ptr, st As CGFloat)
		  setBorderWidth(layer, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonInsetsXC(extends bt As MobileButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  Declare Sub setContentEdgeInsets Lib "UIKit.framework" selector "setContentEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setContentEdgeInsets (bt.handle, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonTiledBackgroundXC(extends bt As MobileButton, img As Picture)
		  
		  
		  
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets
		  insets.Left = 12
		  insets.Top = 12
		  insets.Bottom = 12
		  insets.Right = 12
		  
		  Dim resizedImg as Picture
		  
		  resizedImg = ImageExtensionsXC.ResizableTiledImageXC(insets, img)
		  
		  
		  bt.SetBackdropXC(resizedImg)
		  
		  bt.SetButtonInsetsXC(insets)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120426F6F6C65616E2076616C7565207468617420696E6469636174657320776865746865722074686520627574746F6E20747261636B7320612073656C656374696F6E2C20656974686572207468726F7567682061206D656E75206F72206120746F67676C652E
		Sub SetChangesSelectionAsPrimaryAction(extends bt As MobileButton, value As Boolean)
		  //New in version 2.0
		  
		  // https://developer.apple.com/documentation/uikit/uibutton/changesselectionasprimaryaction?language=objc
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		    
		    
		    // @property (nonatomic, assign, readwrite) BOOL changesSelectionAsPrimaryAction;
		    'Declare Function getChangesSelectionAsPrimaryAction Lib "Foundation" selector "changesSelectionAsPrimaryAction" (obj as ptr) As Ptr
		    Declare Sub setChangesSelectionAsPrimaryAction Lib "Foundation" selector "setChangesSelectionAsPrimaryAction:" (obj as ptr, value as Boolean)
		    
		    setChangesSelectionAsPrimaryAction(bt.handle, value)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetConfigurationXC(extends button as MobileButton, configuration as ButtonExtensionsXC.Configurations = Configurations.plain)
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		    
		    // + (instancetype) tintedButtonConfiguration;
		    
		    Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		    Declare Function respondsToSelector_ Lib "Foundation" Selector "respondsToSelector:" (obj As ptr, aSelector As Ptr) As Boolean
		    Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
		    
		    Dim UIButtonConfiguration_class as ptr = NSClassFromString("UIButtonConfiguration")
		    
		    var config as ptr
		    
		    Select case configuration
		      
		    Case Configurations.plain
		      
		      
		      // + (instancetype) plainButtonConfiguration;
		      Declare Function plainButtonConfiguration Lib "Foundation" Selector "plainButtonConfiguration" ( cls as ptr ) As Ptr
		      config = plainButtonConfiguration( UIButtonConfiguration_class )
		      
		      
		    Case Configurations.gray
		      
		      // + (instancetype) grayButtonConfiguration;
		      Declare Function grayButtonConfiguration Lib "Foundation" Selector "grayButtonConfiguration" ( cls as ptr ) As Ptr
		      config = grayButtonConfiguration( UIButtonConfiguration_class )
		      
		      
		    Case Configurations.tinted
		      
		      Declare Function tintedButtonConfiguration Lib "Foundation" Selector "tintedButtonConfiguration" ( cls as ptr ) As Ptr
		      config = tintedButtonConfiguration( UIButtonConfiguration_class )
		      
		      
		    Case Configurations.filled
		      
		      // + (instancetype) filledButtonConfiguration;
		      Declare Function filledButtonConfiguration Lib "Foundation" Selector "filledButtonConfiguration" ( cls as ptr ) As Ptr
		      config = filledButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Configurations.borderless
		      
		      // + (instancetype) borderlessButtonConfiguration;
		      Declare Function borderlessButtonConfiguration Lib "Foundation" Selector "borderlessButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderlessButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Configurations.bordered
		      
		      // + (instancetype) borderedButtonConfiguration;
		      Declare Function borderedButtonConfiguration Lib "Foundation" Selector "borderedButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderedButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Configurations.borderedTinted
		      
		      // + (instancetype) borderedTintedButtonConfiguration;
		      Declare Function borderedTintedButtonConfiguration Lib "Foundation" Selector "borderedTintedButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderedTintedButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Configurations.borderedProminent
		      
		      // + (instancetype) borderedProminentButtonConfiguration;
		      Declare Function borderedProminentButtonConfiguration Lib "Foundation" Selector "borderedProminentButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderedProminentButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Configurations.glass
		      
		      
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("glassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function glassButtonConfiguration Lib "Foundation" Selector "glassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = glassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		      
		      
		    Case Configurations.prominentGlass
		      
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("prominentGlassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function tintedGlassButtonConfiguration Lib "Foundation" Selector "prominentGlassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = tintedGlassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		      
		    Case Configurations.clearGlass
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("clearGlassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function tintedGlassButtonConfiguration Lib "Foundation" Selector "clearGlassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = tintedGlassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		    Case Configurations.prominentClearGlass
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("prominentClearGlassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function tintedGlassButtonConfiguration Lib "Foundation" Selector "prominentClearGlassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = tintedGlassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		      
		    End Select
		    
		    
		    
		    
		    // @property (nonatomic, copy, readwrite) UIButtonConfiguration * configuration;
		    Declare Sub setConfiguration Lib "Foundation" selector "setConfiguration:" (obj as ptr, value as Ptr)
		    
		    if config <> nil then
		      setConfiguration(button.handle, config)
		      
		    end if
		    
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetContentHorizontalAlignmentXC(extends bt As MobileButton, alignment As ControlExtensionsXC.UIControlContentHorizontalAlignment)
		  
		  
		  declare sub setContentHorizontalAlignment lib "UIKit" Selector "setContentHorizontalAlignment:" (obj as ptr, value as ControlExtensionsXC.UIControlContentHorizontalAlignment)
		  
		  setContentHorizontalAlignment(bt.Handle, alignment)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageInsetsXC(extends bt As MobileButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  
		  Declare Sub setImageEdgeInsets Lib "UIKit.framework" selector "setImageEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setImageEdgeInsets (bt.handle, value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865205069637475726520746F2062652075736564206E65787420746F207468652063617074696F6E2E
		Sub SetImageXC(extends bt As MobileButton, image As Picture, state As ControlExtensionsXC.UIControlState = ControlExtensionsXC.UIControlState.normal)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setImage Lib "UIKit.framework" selector "setImage:forState:" (obj As ptr, value As ptr, state As ControlExtensionsXC.UIControlState)
		  
		  If image Is Nil Then
		    setImage(bt.Handle, Nil, state)
		  Else
		    Dim bestImg As Picture = ImageExtensionsXC.BestRepresentationXC(image)
		    
		    setImage(bt.Handle, bestImg.Handle, state)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineBreakModeXC(extends bt As MobileButton, mode As ControlExtensionsXC.NSLineBreakMode)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  Declare Sub setLineBreakMode Lib "UIKit.framework" selector "setLineBreakMode:" (id As ptr, value As ControlExtensionsXC.NSLineBreakMode)
		  setLineBreakMode label, mode
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNumberOfLinesXC(extends bt As MobileButton, lines As Integer)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  
		  
		  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
		  'setTextAlignment(label, NSTextAlignment.center)
		  
		  Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		  setNumberOfLines label, lines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRoleXC(extends bt As MobileButton, value As ButtonExtensionsXC.UIButtonRole)
		  //New in version 2.0
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 14.0 then
		    Declare Sub setRole Lib "UIKit.framework" selector "setRole:" (obj_id As ptr, aRole As UIButtonRole)
		    setRole(bt.handle, value)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectedXC(extends bt As MobileButton, value As Boolean)
		  
		  
		  
		  // @property (nonatomic, getter=isSelected) BOOL selected;
		  Declare Function getSelected Lib "Foundation" selector "selected" (obj as ptr) As Boolean
		  
		  Declare Sub setSelected Lib "Foundation" selector "setSelected:" (obj as ptr, value as Boolean)
		  setSelected(bt.Handle, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTextAlignmentXC(extends bt As MobileButton, alignment As ControlExtensionsXC.NSTextAlignment)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  
		  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
		  setTextAlignment(label, alignment)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleEdgeInsetsXC(extends bt As MobileButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  Declare Sub setTitleEdgeInsets_ Lib "UIKit.framework" selector "setTitleEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setTitleEdgeInsets_ (bt.handle, value)
		  
		End Sub
	#tag EndMethod


	#tag Enum, Name = Configurations, Type = Integer, Flags = &h0
		plain
		  gray
		  tinted
		  filled
		  borderless
		  bordered
		  borderedTinted
		  borderedProminent
		  glass
		  prominentGlass
		  clearGlass
		prominentClearGlass
	#tag EndEnum

	#tag Enum, Name = UIButtonRole, Type = Integer, Flags = &h0
		normal = 0
		  primary
		  cancel
		destructive
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
