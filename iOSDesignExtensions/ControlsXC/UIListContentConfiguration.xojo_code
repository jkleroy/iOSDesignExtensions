#tag Class
Class UIListContentConfiguration
Inherits NSObjectXC
	#tag Method, Flags = &h0
		Sub ApplyToCell(cell As MobileTableCellData)
		  
		  Declare Sub setContentConfiguration Lib "Foundation" Selector "setContentConfiguration:" (target As Ptr, config As Ptr)
		  
		  setContentConfiguration(cell.Handle, self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  static ref as ptr = NSClassFromString("UIListContentConfiguration")
		  return ref
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		  '#Pragma error "Need to test it works"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetConfiguration(type as Types = Types.cell) As UIListContentConfiguration
		  
		  Declare Function respondsToSelector_ Lib "Foundation" Selector "respondsToSelector:" (obj As ptr, aSelector As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
		  
		  if ExtensionsXC.GetiOSVersionXC >= 14.0 then
		    
		    Dim UIListContentConfiguration_class as ptr = ClassRef
		    
		    var config as ptr
		    
		    Select case type
		      
		    Case Types.cell
		      
		      // + (instancetype) cellConfiguration;
		      Declare Function cellConfiguration Lib "Foundation" Selector "cellConfiguration" ( cls as ptr ) As Ptr
		      config = cellConfiguration( UIListContentConfiguration_class )
		      
		    Case Types.subtitleCell
		      
		      // + (instancetype) subtitleCellConfiguration;
		      Declare Function subtitleCellConfiguration Lib "Foundation" Selector "subtitleCellConfiguration" ( cls as ptr ) As Ptr
		      config = subtitleCellConfiguration( UIListContentConfiguration_class )
		      
		    Case Types.valueCell
		      
		      // + (instancetype) valueCellConfiguration;
		      Declare Function valueCellConfiguration Lib "Foundation" Selector "valueCellConfiguration" ( cls as ptr ) As Ptr
		      config = valueCellConfiguration( UIListContentConfiguration_class )
		      
		    Case Types.header
		      
		      // + (instancetype) headerConfiguration; // iOS 18
		      if respondsToSelector_(UIListContentConfiguration_class, NSSelectorFromString("headerConfiguration")) then
		        Declare Function headerConfiguration Lib "Foundation" Selector "headerConfiguration" ( cls as ptr ) As Ptr
		        config = headerConfiguration( UIListContentConfiguration_class )
		      Else
		        Declare Function groupedHeaderConfiguration Lib "Foundation" Selector "groupedHeaderConfiguration" ( cls as ptr ) As Ptr
		        config = groupedHeaderConfiguration( UIListContentConfiguration_class )
		        
		      end if
		      
		    Case Types.footer
		      
		      // + (instancetype) footerConfiguration; // iOS 18
		      if respondsToSelector_(UIListContentConfiguration_class, NSSelectorFromString("footerConfiguration")) then
		        Declare Function footerConfiguration Lib "Foundation" Selector "footerConfiguration" ( cls as ptr ) As Ptr
		        config = footerConfiguration( UIListContentConfiguration_class )
		      Else
		        Declare Function groupedFooterConfiguration Lib "Foundation" Selector "groupedFooterConfiguration" ( cls as ptr ) As Ptr
		        config = groupedFooterConfiguration( UIListContentConfiguration_class )
		        
		        
		      end if
		      
		    Case Types.prominentInsetGroupedHeader
		      
		      // + (instancetype) prominentInsetGroupedHeaderConfiguration; // iOS 15
		      if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		        Declare Function prominentInsetGroupedHeaderConfiguration Lib "Foundation" Selector "prominentInsetGroupedHeaderConfiguration" ( cls as ptr ) As Ptr
		        config = prominentInsetGroupedHeaderConfiguration( UIListContentConfiguration_class )
		      end if
		      
		    Case Types.extraProminentInsetGroupedHeader
		      
		      // + (instancetype) extraProminentInsetGroupedHeaderConfiguration; // iOS 15
		      if ExtensionsXC.GetiOSVersionXC >= 15.0 then
		        Declare Function extraProminentInsetGroupedHeaderConfiguration Lib "Foundation" Selector "extraProminentInsetGroupedHeaderConfiguration" ( cls as ptr ) As Ptr
		        config = extraProminentInsetGroupedHeaderConfiguration( UIListContentConfiguration_class )
		      end if
		      
		    Case Types.accompaniedSidebarCell
		      
		      // + (instancetype) accompaniedSidebarCellConfiguration;
		      Declare Function accompaniedSidebarCellConfiguration Lib "Foundation" Selector "accompaniedSidebarCellConfiguration" ( cls as ptr ) As Ptr
		      config = accompaniedSidebarCellConfiguration( UIListContentConfiguration_class )
		      
		    Case Types.accompaniedSidebarSubtitleCell
		      
		      // + (instancetype) accompaniedSidebarSubtitleCellConfiguration;
		      Declare Function accompaniedSidebarSubtitleCellConfiguration Lib "Foundation" Selector "accompaniedSidebarSubtitleCellConfiguration" ( cls as ptr ) As Ptr
		      config = accompaniedSidebarSubtitleCellConfiguration( UIListContentConfiguration_class )
		      
		    End Select
		    
		    Return new UIListContentConfiguration(config)
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function imageProperties() As Ptr
		  // @property (nonatomic, readonly) UIListContentImageProperties * imageProperties;
		  Declare Function getImageProperties Lib "Foundation" selector "imageProperties" (obj as ptr) As Ptr
		  
		  Return getImageProperties(self.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function secondaryTextProperties() As Ptr
		  // @property (nonatomic, readonly) UIListContentTextProperties * secondaryTextProperties;
		  Declare Function getSecondaryTextProperties Lib "Foundation" selector "secondaryTextProperties" (obj as ptr) As Ptr
		  
		  Return getSecondaryTextProperties(self.id)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function textProperties() As Ptr
		  // @property (nonatomic, readonly) UIListContentTextProperties * textProperties;
		  Declare Function getTextProperties Lib "Foundation" selector "textProperties" (obj as ptr) As Ptr
		  
		  Return getTextProperties(self.id)
		End Function
	#tag EndMethod


	#tag Note, Name = Support
		
		UIListContentConfiguration is available since iOS14
		
		It describes the content (image + primary/secondary text) of a list cell, header
		or footer, and is applied through a view's contentConfiguration.
		
		Reference:
		https://developer.apple.com/documentation/uikit/uilistcontentconfiguration?language=objc
		
		
	#tag EndNote

	#tag Note, Name = TODO
		
		
		imageProperties / textProperties / secondaryTextProperties are exposed as raw
		Ptr getters. Wrap them in dedicated UIListContentImageProperties /
		UIListContentTextProperties classes to expose font, color, numberOfLines, etc.
		
		attributedText / secondaryAttributedText are exposed as raw Ptr (NSAttributedString).
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) CGFloat alpha; // iOS 18
			  Declare Function respondsToSelector_ Lib "Foundation" Selector "respondsToSelector:" (obj As ptr, aSelector As Ptr) As Boolean
			  Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
			  
			  if respondsToSelector_(self.id, NSSelectorFromString("alpha")) then
			    Declare Function getAlpha Lib "Foundation" selector "alpha" (obj as ptr) As CGFloat
			    Return getAlpha(self.id)
			  else
			    Return 1.0
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Function respondsToSelector_ Lib "Foundation" Selector "respondsToSelector:" (obj As ptr, aSelector As Ptr) As Boolean
			  Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
			  
			  if respondsToSelector_(self.id, NSSelectorFromString("setAlpha:")) then
			    Declare Sub setAlpha Lib "Foundation" selector "setAlpha:" (obj as ptr, value as CGFloat)
			    setAlpha(self.id, value)
			  end if
			End Set
		#tag EndSetter
		alpha As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, copy, nullable) NSAttributedString * attributedText;
			  Declare Function getAttributedText Lib "Foundation" selector "attributedText" (obj as ptr) As Ptr
			  
			  Return getAttributedText(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAttributedText Lib "Foundation" selector "setAttributedText:" (obj as ptr, value as Ptr)
			  
			  setAttributedText(self.id, value)
			End Set
		#tag EndSetter
		attributedText As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) UIAxis axesPreservingSuperviewLayoutMargins;
			  Declare Function getAxes Lib "Foundation" selector "axesPreservingSuperviewLayoutMargins" (obj as ptr) As UIAxis
			  
			  Return getAxes(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setAxes Lib "Foundation" selector "setAxesPreservingSuperviewLayoutMargins:" (obj as ptr, value as UIAxis)
			  
			  setAxes(self.id, value)
			End Set
		#tag EndSetter
		axesPreservingSuperviewLayoutMargins As UIAxis
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) NSDirectionalEdgeInsets directionalLayoutMargins;
			  Declare Function getDirectionalLayoutMargins Lib "Foundation" selector "directionalLayoutMargins" (obj as ptr) As ExtensionsXC.xcNSDirectionalEdgeInsets
			  
			  Return getDirectionalLayoutMargins(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setDirectionalLayoutMargins Lib "Foundation" selector "setDirectionalLayoutMargins:" (obj as ptr, value as ExtensionsXC.xcNSDirectionalEdgeInsets)
			  
			  setDirectionalLayoutMargins(self.id, value)
			End Set
		#tag EndSetter
		directionalLayoutMargins As ExtensionsXC.xcNSDirectionalEdgeInsets
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  // @property (nonatomic, strong, nullable) UIImage * image;
			  Declare Sub setImage Lib "Foundation" selector "setImage:" (obj as ptr, value as Ptr)
			  
			  If value Is Nil Then
			    setImage(self.id, nil)
			  Else
			    'Dim bestImg As Picture = ImageExtensionsXC.BestRepresentationXC(value)
			    setImage(self.id, value.Handle)
			  End If
			End Set
		#tag EndSetter
		image As Picture
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) CGFloat imageToTextPadding;
			  Declare Function getImageToTextPadding Lib "Foundation" selector "imageToTextPadding" (obj as ptr) As CGFloat
			  
			  Return getImageToTextPadding(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setImageToTextPadding Lib "Foundation" selector "setImageToTextPadding:" (obj as ptr, value as CGFloat)
			  
			  setImageToTextPadding(self.id, value)
			End Set
		#tag EndSetter
		imageToTextPadding As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) BOOL prefersSideBySideTextAndSecondaryText;
			  Declare Function getPrefersSideBySide Lib "Foundation" selector "prefersSideBySideTextAndSecondaryText" (obj as ptr) As boolean
			  
			  Return getPrefersSideBySide(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setPrefersSideBySide Lib "Foundation" selector "setPrefersSideBySideTextAndSecondaryText:" (obj as ptr, value as boolean)
			  
			  setPrefersSideBySide(self.id, value)
			End Set
		#tag EndSetter
		prefersSideBySideTextAndSecondaryText As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, copy, nullable) NSAttributedString * secondaryAttributedText;
			  Declare Function getSecondaryAttributedText Lib "Foundation" selector "secondaryAttributedText" (obj as ptr) As Ptr
			  
			  Return getSecondaryAttributedText(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSecondaryAttributedText Lib "Foundation" selector "setSecondaryAttributedText:" (obj as ptr, value as Ptr)
			  
			  setSecondaryAttributedText(self.id, value)
			End Set
		#tag EndSetter
		secondaryAttributedText As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, copy, nullable) NSString * secondaryText;
			  Declare Function getSecondaryText Lib "Foundation" selector "secondaryText" (obj as ptr) As CFStringRef
			  
			  Return getSecondaryText(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSecondaryText Lib "Foundation" selector "setSecondaryText:" (obj as ptr, value as CFStringRef)
			  
			  setSecondaryText(self.id, value)
			End Set
		#tag EndSetter
		secondaryText As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, copy, nullable) NSString * text;
			  Declare Function getText Lib "Foundation" selector "text" (obj as ptr) As CFStringRef
			  
			  Return getText(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setText Lib "Foundation" selector "setText:" (obj as ptr, value as CFStringRef)
			  
			  setText(self.id, value)
			End Set
		#tag EndSetter
		text As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) CGFloat textToSecondaryTextHorizontalPadding;
			  Declare Function getHPadding Lib "Foundation" selector "textToSecondaryTextHorizontalPadding" (obj as ptr) As CGFloat
			  
			  Return getHPadding(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHPadding Lib "Foundation" selector "setTextToSecondaryTextHorizontalPadding:" (obj as ptr, value as CGFloat)
			  
			  setHPadding(self.id, value)
			End Set
		#tag EndSetter
		textToSecondaryTextHorizontalPadding As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic) CGFloat textToSecondaryTextVerticalPadding;
			  Declare Function getVPadding Lib "Foundation" selector "textToSecondaryTextVerticalPadding" (obj as ptr) As CGFloat
			  
			  Return getVPadding(self.id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setVPadding Lib "Foundation" selector "setTextToSecondaryTextVerticalPadding:" (obj as ptr, value as CGFloat)
			  
			  setVPadding(self.id, value)
			End Set
		#tag EndSetter
		textToSecondaryTextVerticalPadding As Double
	#tag EndComputedProperty


	#tag Enum, Name = Types, Type = Integer, Flags = &h0
		cell
		  subtitleCell
		  valueCell
		  header
		  footer
		  prominentInsetGroupedHeader
		  extraProminentInsetGroupedHeader
		  accompaniedSidebarCell
		accompaniedSidebarSubtitleCell
	#tag EndEnum

	#tag Enum, Name = UIAxis, Type = Integer, Flags = &h0
		Neither = 0
		  Horizontal = 1
		  Vertical = 2
		Both = 3
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
			Name="text"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="secondaryText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="imageToTextPadding"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="textToSecondaryTextHorizontalPadding"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="textToSecondaryTextVerticalPadding"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="prefersSideBySideTextAndSecondaryText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="alpha"
			Visible=false
			Group="Behavior"
			InitialValue="1.0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="axesPreservingSuperviewLayoutMargins"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UIAxis"
			EditorType="Enum"
			#tag EnumValues
				"0 - Neither"
				"1 - Horizontal"
				"2 - Vertical"
				"3 - Both"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
