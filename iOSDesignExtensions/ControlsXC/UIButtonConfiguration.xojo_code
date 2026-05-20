#tag Class
Class UIButtonConfiguration
Inherits NSObjectXC
	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  static ref as ptr = NSClassFromString("UIButtonConfiguration")
		  return ref
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetConfiguration(type as Types = Types.plain) As UIButtonConfiguration
		  
		  Declare Function respondsToSelector_ Lib "Foundation" Selector "respondsToSelector:" (obj As ptr, aSelector As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
		  
		  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		    
		    // + (instancetype) tintedButtonConfiguration;
		    
		    
		    
		    Dim UIButtonConfiguration_class as ptr = ClassRef
		    
		    var config as ptr
		    
		    Select case type
		      
		    Case Types.plain
		      
		      
		      // + (instancetype) plainButtonConfiguration;
		      Declare Function plainButtonConfiguration Lib "Foundation" Selector "plainButtonConfiguration" ( cls as ptr ) As Ptr
		      config = plainButtonConfiguration( UIButtonConfiguration_class )
		      
		      
		    Case Types.gray
		      
		      // + (instancetype) grayButtonConfiguration;
		      Declare Function grayButtonConfiguration Lib "Foundation" Selector "grayButtonConfiguration" ( cls as ptr ) As Ptr
		      config = grayButtonConfiguration( UIButtonConfiguration_class )
		      
		      
		    Case Types.tinted
		      
		      Declare Function tintedButtonConfiguration Lib "Foundation" Selector "tintedButtonConfiguration" ( cls as ptr ) As Ptr
		      config = tintedButtonConfiguration( UIButtonConfiguration_class )
		      
		      
		    Case Types.filled
		      
		      // + (instancetype) filledButtonConfiguration;
		      Declare Function filledButtonConfiguration Lib "Foundation" Selector "filledButtonConfiguration" ( cls as ptr ) As Ptr
		      config = filledButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Types.borderless
		      
		      // + (instancetype) borderlessButtonConfiguration;
		      Declare Function borderlessButtonConfiguration Lib "Foundation" Selector "borderlessButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderlessButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Types.bordered
		      
		      // + (instancetype) borderedButtonConfiguration;
		      Declare Function borderedButtonConfiguration Lib "Foundation" Selector "borderedButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderedButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Types.borderedTinted
		      
		      // + (instancetype) borderedTintedButtonConfiguration;
		      Declare Function borderedTintedButtonConfiguration Lib "Foundation" Selector "borderedTintedButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderedTintedButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Types.borderedProminent
		      
		      // + (instancetype) borderedProminentButtonConfiguration;
		      Declare Function borderedProminentButtonConfiguration Lib "Foundation" Selector "borderedProminentButtonConfiguration" ( cls as ptr ) As Ptr
		      config = borderedProminentButtonConfiguration( UIButtonConfiguration_class )
		      
		    Case Types.glass
		      
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("glassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function glassButtonConfiguration Lib "Foundation" Selector "glassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = glassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		      
		      
		    Case Types.prominentGlass
		      
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("prominentGlassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function tintedGlassButtonConfiguration Lib "Foundation" Selector "prominentGlassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = tintedGlassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		      
		    Case Types.clearGlass
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("clearGlassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function tintedGlassButtonConfiguration Lib "Foundation" Selector "clearGlassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = tintedGlassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		    Case Types.prominentClearGlass
		      
		      
		      if respondsToSelector_(UIButtonConfiguration_class, NSSelectorFromString("prominentClearGlassButtonConfiguration")) then
		        
		        // + (instancetype) glassButtonConfiguration;
		        Declare Function tintedGlassButtonConfiguration Lib "Foundation" Selector "prominentClearGlassButtonConfiguration" ( cls as ptr ) As Ptr
		        
		        config = tintedGlassButtonConfiguration( UIButtonConfiguration_class )
		      end if
		      
		      
		      
		    End Select
		    
		    
		    
		    Return new UIButtonConfiguration(config)
		    
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526573746F726573207468652064656661756C7420636F6E74656E7420696E736574732E
		Sub setDefaultContentInsets()
		  // - (void) setDefaultContentInsets;
		  Declare Sub setDefaultContentInsets Lib "Foundation" Selector "setDefaultContentInsets" ( obj as ptr )
		  
		  setDefaultContentInsets(self.id)
		End Sub
	#tag EndMethod


	#tag Note, Name = Support
		
		UIButtonConfiguration is available since iOS15
		
		
		Inspired by https://sarunw.com/posts/new-way-to-style-uibutton-in-ios15/
	#tag EndNote

	#tag Note, Name = TODO
		
		
		
		imageColorTransformer
		https://developer.apple.com/documentation/uikit/uibuttonconfiguration/imagecolortransformer?language=objc
		
		
		preferredSymbolConfigurationForImage
		https://developer.apple.com/documentation/uikit/uibuttonconfiguration/preferredsymbolconfigurationforimage?language=objc
		
		indicator
		https://developer.apple.com/documentation/uikit/uibuttonconfiguration/indicator?language=objc
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 54686520756E7472616E73666F726D656420636F6C6F7220666F72206261636B67726F756E642076696577732E
		#tag Setter
			Set
			  // @property (nonatomic, strong, readwrite) UIColor * baseBackgroundColor;
			  'Declare Function getBaseBackgroundColor Lib "Foundation" selector "baseBackgroundColor" (obj as ptr) As Ptr
			  
			  
			  Declare Sub setBaseBackgroundColor Lib "Foundation" selector "setBaseBackgroundColor:" (obj as ptr, value as Ptr)
			  
			  
			  Dim uic As ptr
			  
			  if value.Alpha = 255 then
			    uic = ExtensionsXC.UIColor_Clear
			  else
			    uic = ExtensionsXC.UIColorFromColor(value)
			  end if
			  
			  setBaseBackgroundColor(self.id, uic)
			  
			End Set
		#tag EndSetter
		baseBackgroundColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520756E7472616E73666F726D656420636F6C6F7220666F7220666F726567726F756E642076696577732E
		#tag Setter
			Set
			  // @property (nonatomic, strong, readwrite) UIColor * baseBackgroundColor;
			  'Declare Function getBaseBackgroundColor Lib "Foundation" selector "baseBackgroundColor" (obj as ptr) As Ptr
			  
			  
			  Declare Sub setBaseForegroundColor Lib "Foundation" selector "setBaseForegroundColor:" (obj as ptr, value as Ptr)
			  
			  
			  Dim uic As ptr
			  
			  if value.Alpha = 255 then
			    uic = ExtensionsXC.UIColor_Clear
			  else
			    uic = ExtensionsXC.UIColorFromColor(value)
			  end if
			  
			  setBaseForegroundColor(self.id, uic)
			  
			End Set
		#tag EndSetter
		baseForegroundColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412073697A6520746861742072657175657374732061207072656665727265642073697A6520666F722074686520627574746F6E2E
		#tag Note
			Not working
		#tag EndNote
		#tag Getter
			Get
			  // https://developer.apple.com/documentation/uikit/uibuttonconfiguration/buttonsize?language=objc
			  
			  // @property (nonatomic, assign, readwrite) UIButtonConfigurationSize buttonSize;
			  Declare Function getButtonSize Lib "Foundation" selector "buttonSize" (obj as ptr) As Sizes
			  
			  Return getButtonSize(self.id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setButtonSize Lib "Foundation" selector "setButtonSize:" (obj as ptr, value as Sizes)
			  
			  setButtonSize(self.id, value)
			End Set
		#tag EndSetter
		buttonSize As Sizes
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E63652066726F6D2074686520627574746F6EE280997320636F6E74656E74206172656120746F2069747320626F756E64732E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) NSDirectionalEdgeInsets contentInsets;
			  Declare Function getContentInsets Lib "Foundation" selector "contentInsets" (obj as ptr) As ExtensionsXC.xcNSDirectionalEdgeInsets
			  
			  Return getContentInsets(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setContentInsets Lib "Foundation" selector "setContentInsets:" (obj as ptr, value as ExtensionsXC.xcNSDirectionalEdgeInsets)
			  
			  setContentInsets(self.id, value)
			End Set
		#tag EndSetter
		contentInsets As ExtensionsXC.xcNSDirectionalEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652070726566657272656420636F726E6572207261646975732C207573696E67206120636F6E74696E756F757320636F726E65722063757276652C20666F7220746865206261636B67726F756E6420616E64207374726F6B652E
		#tag Getter
			Get
			  // @property (nonatomic) CGFloat cornerRadius;
			  // @property (nonatomic, strong, readwrite) UIBackgroundConfiguration * background;
			  
			  Declare Function getCornerRadius Lib "Foundation" selector "cornerRadius" (obj as ptr) As CGFloat
			  Declare Function getBackground Lib "Foundation" selector "background" (obj as ptr) As Ptr
			  
			  
			  
			  
			  
			  
			  Dim backgroundPtr as ptr = getBackground(self.id)
			  
			  Return getCornerRadius(backgroundPtr)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Function getBackground Lib "Foundation" selector "background" (obj as ptr) As Ptr
			  Declare Sub setCornerRadius Lib "Foundation" selector "setCornerRadius:" (obj as ptr, value as CGFloat)
			  
			  Dim backgroundPtr as ptr = getBackground(self.id)
			  
			  setCornerRadius(backgroundPtr, value)
			End Set
		#tag EndSetter
		cornerRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E207374796C65207468617420636F6E74726F6C732074686520646973706C6179206265686176696F72206F6620746865206261636B67726F756E6420636F726E6572207261646975732E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) UIButtonConfigurationCornerStyle cornerStyle;
			  Declare Function getCornerStyle Lib "Foundation" selector "cornerStyle" (obj as ptr) As cornerStyles
			  
			  Return getCornerStyle(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Declare Sub setCornerStyle Lib "Foundation" selector "setCornerStyle:" (obj as ptr, value as cornerStyles)
			  
			  setCornerStyle(self.id, value)
			End Set
		#tag EndSetter
		cornerStyle As CornerStyles
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520666F726567726F756E6420696D6167652074686520627574746F6E20646973706C6179732E
		#tag Setter
			Set
			  // @property (nonatomic, strong, readwrite) UIImage * image;
			  'Declare Function getImage Lib "Foundation" selector "image" (obj as ptr) As Ptr
			  Declare Sub setImage Lib "Foundation" selector "setImage:" (obj as ptr, value as Ptr)
			  
			  
			  
			  If value Is Nil Then
			    setImage(self.id, nil)
			  Else
			    Dim bestImg As Picture = ImageExtensionsXC.BestRepresentationXC(value)
			    
			    setImage(self.id, bestImg.Handle)
			    
			  End If
			End Set
		#tag EndSetter
		image As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E6365206265747765656E2074686520627574746F6EE280997320696D61676520616E6420746578742E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) CGFloat imagePadding;
			  Declare Function getImagePadding Lib "Foundation" selector "imagePadding" (obj as ptr) As CGFloat
			  
			  Return getImagePadding(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Declare Sub setImagePadding Lib "Foundation" selector "setImagePadding:" (obj as ptr, value as CGFloat)
			  
			  setImagePadding(self.id, value)
			End Set
		#tag EndSetter
		imagePadding As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206564676520616761696E73742077686963682074686520627574746F6E20706C616365732074686520696D6167652E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) NSDirectionalRectEdge imagePlacement;
			  Declare Function getImagePlacement Lib "Foundation" selector "imagePlacement" (obj as ptr) As NSDirectionalRectEdge
			  
			  Return getImagePlacement(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setImagePlacement Lib "Foundation" selector "setImagePlacement:" (obj as ptr, value as NSDirectionalRectEdge)
			  
			  setImagePlacement(self.id, value)
			End Set
		#tag EndSetter
		imagePlacement As NSDirectionalRectEdge
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520627574746F6E20646973706C61797320616E20616374697669747920696E64696361746F7220696E7374656164206F6620616E20696D6167652E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) BOOL showsActivityIndicator;
			  Declare Function getShowsActivityIndicator Lib "Foundation" selector "showsActivityIndicator" (obj as ptr) As boolean
			  
			  Return getShowsActivityIndicator(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setShowsActivityIndicator Lib "Foundation" selector "setShowsActivityIndicator:" (obj as ptr, value as boolean)
			  
			  setShowsActivityIndicator(self.id, value)
			End Set
		#tag EndSetter
		showsActivityIndicator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, copy, readwrite) NSString * subtitle;
			  Declare Function getSubtitle Lib "Foundation" selector "subtitle" (obj as ptr) As CFStringRef
			  
			  Return getSubtitle(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSubtitle Lib "Foundation" selector "setSubtitle:" (obj as ptr, value as CFStringRef)
			  
			  setSubtitle(self.id, value)
			End Set
		#tag EndSetter
		subtitle As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C696E6520627265616B206D6F64652074686520627574746F6E207573657320746F206C6179206F75742074686520627574746F6EE2809973207375627469746C652E
		#tag Getter
			Get
			  
			  
			  // @property (nonatomic, assign, readwrite) NSLineBreakMode subtitleLineBreakMode;
			  Declare Function getSubtitleLineBreakMode Lib "Foundation" selector "subtitleLineBreakMode" (obj as ptr) As NSLineBreakMode
			  
			  Return getSubtitleLineBreakMode(self.id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSubtitleLineBreakMode Lib "Foundation" selector "setSubtitleLineBreakMode:" (obj as ptr, value as NSLineBreakMode)
			  
			  
			  setSubtitleLineBreakMode(self.id, value)
			End Set
		#tag EndSetter
		subtitleLineBreakMode As NSLineBreakMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, copy, readwrite) NSString * title;
			  Declare Function getTitle Lib "Foundation" selector "title" (obj as ptr) As CFStringRef
			  
			  Return getTitle(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTitle Lib "Foundation" selector "setTitle:" (obj as ptr, value as CFStringRef)
			  
			  setTitle(self.id, value)
			End Set
		#tag EndSetter
		title As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207465787420616C69676E6D656E742074686520627574746F6E207573657320746F206C6179206F757420746865207469746C6520616E64207375627469746C652E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) UIButtonConfigurationTitleAlignment titleAlignment;
			  Declare Function getTitleAlignment Lib "Foundation" selector "titleAlignment" (obj as ptr) As TitleAlignments
			  
			  Return getTitleAlignment(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTitleAlignment Lib "Foundation" selector "setTitleAlignment:" (obj as ptr, value as TitleAlignments)
			  
			  setTitleAlignment(self.id, value)
			End Set
		#tag EndSetter
		titleAlignment As TitleAlignments
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C696E6520627265616B206D6F64652074686520627574746F6E207573657320746F206C6179206F75742074686520627574746F6EE2809973207469746C652E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) NSLineBreakMode titleLineBreakMode;
			  Declare Function getTitleLineBreakMode Lib "Foundation" selector "titleLineBreakMode" (obj as ptr) As NSLineBreakMode
			  
			  Return getTitleLineBreakMode(self.id)
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTitleLineBreakMode Lib "Foundation" selector "setTitleLineBreakMode:" (obj as ptr, value as NSLineBreakMode)
			  
			  
			  setTitleLineBreakMode(self.id, value)
			End Set
		#tag EndSetter
		titleLineBreakMode As NSLineBreakMode
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064697374616E6365206265747765656E20746865207469746C6520616E64207375627469746C65206C6162656C732E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) CGFloat titlePadding;
			  Declare Function getTitlePadding Lib "Foundation" selector "titlePadding" (obj as ptr) As CGFloat
			  
			  Return getTitlePadding(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setTitlePadding Lib "Foundation" selector "setTitlePadding:" (obj as ptr, value as CGFloat)
			  
			  setTitlePadding(self.id, value)
			End Set
		#tag EndSetter
		titlePadding As Double
	#tag EndComputedProperty


	#tag Enum, Name = CornerStyles, Type = Integer, Flags = &h0
		Fixed = -1
		  Dynamic
		  Small
		  Medium
		  Large
		Capsule
	#tag EndEnum

	#tag Enum, Name = NSDirectionalRectEdge, Type = Integer, Flags = &h0
		None = 0
		  Top = 1
		  Leading = 2
		  Bottom = 4
		  Trailing = 8
		All = 15
	#tag EndEnum

	#tag Enum, Name = NSLineBreakMode, Type = Integer, Flags = &h0
		WordWrap = 0
		  CharacterWrap
		  Clip
		  TruncateHead
		  TruncateTail
		TruncateMiddle
	#tag EndEnum

	#tag Enum, Name = Sizes, Type = Integer, Flags = &h0
		Medium
		  Small
		  Mini
		Large
	#tag EndEnum

	#tag Enum, Name = TitleAlignments, Type = Integer, Flags = &h0, Description = 53706563696669657320686F7720746F20616C69676E206120627574746F6EE2809973207469746C6520616E64207375627469746C652E
		Automatic
		  Leading
		  Center
		Trailing
	#tag EndEnum

	#tag Enum, Name = Types, Type = Integer, Flags = &h0
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


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="baseBackgroundColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="baseForegroundColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="buttonSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Sizes"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cornerRadius"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cornerStyle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="CornerStyles"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="image"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="imagePadding"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="imagePlacement"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSDirectionalRectEdge"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="showsActivityIndicator"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="subtitle"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="subtitleLineBreakMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSLineBreakMode"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="titleAlignment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="TitleAlignments"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="titleLineBreakMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="NSLineBreakMode"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="titlePadding"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
