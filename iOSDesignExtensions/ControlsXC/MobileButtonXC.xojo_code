#tag Class
Protected Class MobileButtonXC
Inherits MobileButton
	#tag ExternalMethod, Flags = &h21
		Private Declare Function titleLabel Lib "UIKit" Selector "titleLabel" (o as ptr) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Sub UpdateConfigurationXC(config As UIButtonConfiguration)
		  
		  self.configurationXC = config
		  
		  // - (void) setNeedsUpdateConfiguration;
		  Declare Sub setNeedsUpdateConfiguration Lib "Foundation" Selector "setNeedsUpdateConfiguration" ( obj as ptr )
		  
		  setNeedsUpdateConfiguration(self.Handle)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796572277320626F7264657220636F6C6F72
		#tag Setter
			Set
			  
			  Dim layer as ptr = self.GetLayerXC
			  
			  
			  Dim uic as ptr
			  if value.Alpha = 255 then
			    uic = ExtensionsXC.UIColor_Clear()
			  else
			    uic = ExtensionsXC.UIColorFromColor(value)
			    
			  end if
			  
			  declare sub setBorderColor lib "UIKit.framework" selector "setBorderColor:" (obj_id as ptr, col as ptr)
			  Declare Function CGColor Lib "UIKit" selector "cgColor" (obj_id As ptr) as ptr
			  
			  setBorderColor(layer, CGColor(uic))
			End Set
		#tag EndSetter
		borderColorXC As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C61796572277320626F72646572207769647468
		#tag Setter
			Set
			  
			  Declare Function layer_ Lib "UIKit" selector "layer" (id As ptr) As Ptr
			  Dim layer As ptr = layer_(self.Handle)
			  
			  
			  Declare Sub setBorderWidth Lib "UIKit.framework" selector "setBorderWidth:" (obj_id As ptr, st As CGFloat)
			  setBorderWidth(layer, value)
			End Set
		#tag EndSetter
		borderWidthXC As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520627574746F6E20747970652E
		#tag Getter
			Get
			  // @property (nonatomic, readonly) UIButtonType buttonType;
			  Declare Function getButtonType Lib "Foundation" selector "buttonType" (obj as ptr) As Integer
			  'Declare Sub setButtonType Lib "Foundation" selector "setButtonType:" (obj as ptr, value as Ptr)
			  
			  Return getButtonType(self.Handle)
			End Get
		#tag EndGetter
		buttonTypeXC As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 28694F53313429204120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E74657874206D656E7520696E746572616374696F6E2069732074686520636F6E74726F6CE2809973207072696D61727920616374696F6E2E
		#tag Getter
			Get
			  
			  // https://developer.apple.com/documentation/uikit/uibutton/changesselectionasprimaryaction?language=objc
			  
			  
			  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
			    
			    
			    // @property (nonatomic, assign, readwrite) BOOL changesSelectionAsPrimaryAction;
			    Declare Function getChangesSelectionAsPrimaryAction Lib "Foundation" selector "changesSelectionAsPrimaryAction" (obj as ptr) As Boolean
			    
			    return getChangesSelectionAsPrimaryAction(self.handle)
			    
			  end if
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  // https://developer.apple.com/documentation/uikit/uibutton/changesselectionasprimaryaction?language=objc
			  
			  
			  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
			    
			    
			    // @property (nonatomic, assign, readwrite) BOOL changesSelectionAsPrimaryAction;
			    'Declare Function getChangesSelectionAsPrimaryAction Lib "Foundation" selector "changesSelectionAsPrimaryAction" (obj as ptr) As Boolean
			    Declare Sub setChangesSelectionAsPrimaryAction Lib "Foundation" selector "setChangesSelectionAsPrimaryAction:" (obj as ptr, value as Boolean)
			    
			    setChangesSelectionAsPrimaryAction(self.handle, value)
			    
			  end if
			  
			End Set
		#tag EndSetter
		changesSelectionAsPrimaryActionXC As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 28694F533135292054686520636F6E66696775726174696F6E20666F722074686520627574746F6EE280997320617070656172616E63652E
		#tag Getter
			Get
			  // @property (nonatomic, copy, readwrite) UIButtonConfiguration * configuration;
			  Declare function getConfiguration Lib "Foundation" selector "configuration" (obj as ptr) as ptr
			  
			  
			  Return new UIButtonConfiguration(getConfiguration(self.Handle))
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // @property (nonatomic, copy, readwrite) UIButtonConfiguration * configuration;
			  Declare Sub setConfiguration Lib "Foundation" selector "setConfiguration:" (obj as ptr, value as Ptr)
			  
			  
			  setConfiguration(self.handle, value)
			  
			  
			End Set
		#tag EndSetter
		configurationXC As UIButtonConfiguration
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  // @property (nonatomic, getter=isHighlighted) BOOL highlighted;
			  Declare Function getHighlighted Lib "Foundation" selector "isHighlighted" (obj as ptr) As Boolean
			  
			  
			  
			  Return getHighlighted(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setHighlighted Lib "Foundation" selector "setHighlighted:" (obj as ptr, value as Boolean)
			  
			  setHighlighted(self.Handle, value)
			End Set
		#tag EndSetter
		highlightedXC As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  Declare sub setMenu lib UIKitLib selector "setMenu:" (obj as ptr, menu as ptr)
			  
			  
			  setMenu(self.Handle, value)
			  
			  #Pragma error "todo"
			End Set
		#tag EndSetter
		menuXC As UIMenu
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D206E756D626572206F66206C696E657320666F722072656E646572696E6720746578742E0A
		#tag Getter
			Get
			  // @property (nonatomic) NSInteger numberOfLines;
			  Declare Function getNumberOfLines Lib "Foundation" selector "numberOfLines" (obj as ptr) As Integer
			  
			  Dim label As ptr = titleLabel(self.Handle)
			  
			  Return getNumberOfLines(label)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Dim label As ptr = titleLabel(self.Handle)
			  'Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
			  'label = getTextLabel(bt.Handle)
			  
			  
			  
			  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
			  'setTextAlignment(label, NSTextAlignment.center)
			  
			  Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
			  setNumberOfLines label, value
			End Set
		#tag EndSetter
		numberOfLinesXC As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // @property (nonatomic, getter=isSelected) BOOL selected;
			  Declare Function getSelected Lib "Foundation" selector "selected" (obj as ptr) As Boolean
			  
			  
			  Return getSelected(self.Handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setSelected Lib "Foundation" selector "setSelected:" (obj as ptr, value as Boolean)
			  
			  setSelected(self.Handle, value)
			End Set
		#tag EndSetter
		selectedXC As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 28694F53313429204120426F6F6C65616E2076616C756520746861742064657465726D696E657320776865746865722074686520636F6E74657874206D656E7520696E746572616374696F6E2069732074686520636F6E74726F6CE2809973207072696D61727920616374696F6E2E
		#tag Getter
			Get
			  // @property (nonatomic, assign, readwrite) BOOL showsMenuAsPrimaryAction;
			  
			  if ExtensionsXC.GetiOSVersionXC >= 14.0 then
			    
			    Declare Function getShowsMenuAsPrimaryAction Lib "Foundation" selector "showsMenuAsPrimaryAction" (obj as ptr) As Boolean
			    
			    
			    Return getShowsMenuAsPrimaryAction(self.Handle)
			    
			    
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if ExtensionsXC.GetiOSVersionXC >= 14.0 then
			    
			    Declare Sub setShowsMenuAsPrimaryAction Lib "Foundation" selector "setShowsMenuAsPrimaryAction:" (obj as ptr, value as Boolean)
			    
			    setShowsMenuAsPrimaryAction(self.Handle, value)
			    
			    
			  end if
			End Set
		#tag EndSetter
		showsMenuAsPrimaryActionXC As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 28694F53313529205468652064656661756C74207465787420746F20646973706C617920696E2074686520636F6E74726F6CE280997320746F6F6C74697020696E204D61634F5320436174616C79737420617070732E
		#tag Getter
			Get
			  // @property (nonatomic, copy) NSString * toolTip;
			  
			  
			  
			  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
			    
			    Declare Function getToolTip Lib "Foundation" selector "toolTip" (obj as ptr) As CFStringRef
			    
			    
			    Return getToolTip(self.Handle)
			    
			    
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if ExtensionsXC.GetiOSVersionXC >= 15.0 then
			    
			    Declare Sub setToolTip Lib "Foundation" selector "setToolTip:" (obj as ptr, value as CFStringRef)
			    
			    
			    
			    setToolTip(self.Handle, value)
			    
			    
			  end if
			End Set
		#tag EndSetter
		toolTipXC As String
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="_ClosingFired"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="Height"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=false
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=false
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="selectedXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="highlightedXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="showsMenuAsPrimaryActionXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="toolTipXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="borderWidthXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="changesSelectionAsPrimaryActionXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="buttonTypeXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="borderColorXC"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="numberOfLinesXC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
