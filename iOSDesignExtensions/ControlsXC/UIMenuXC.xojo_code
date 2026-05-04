#tag Class
Class UIMenuXC
Inherits UIMenuElementXC
	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  
		  static ref as Ptr = NSClassFromString("UIMenu")
		  return ref
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(title as String, Children() as UIMenuElementXC)
		  Declare function menuWithTitleChildren_ lib "UIKit" selector "menuWithTitle:children:" (obj as ptr, title As CFStringRef, children as ptr) as ptr
		  
		  
		  Dim nsmutableArray_ref as ptr = NSObjectXC.Initialize( NSObjectXC.Allocate( ControlsXC.NSClassFromString("NSMutableArray")))
		  
		  declare sub addObject lib "Foundation" selector "addObject:" ( id as Ptr, newItem as Ptr )
		  
		  for each item as UIMenuElementXC in Children
		    
		    addObject(nsmutableArray_ref, item)
		  next
		  
		  
		  super.constructor(menuWithTitleChildren_((ClassRef), title, nsmutableArray_ref))
		  
		  'self.needsExtraRelease = True
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetAndroid and (Target64Bit))
		Sub x_Constructor(title as String, options as Integer, children as Foundation.NSArray)
		  #if False
		    TODO
		    Declare function menuWithTitleChildren_ lib "UIKit" selector "menuWithTitle:image:identifier:options:children:" (obj as ptr, title As CFStringRef, img as ptr, ident as ptr, options as integer, children as ptr) as ptr
		    
		    
		    super.constructor(menuWithTitleChildren_((ClassRef), title, nil, nil, options, Children))
		    
		  #endif
		  'self.needsExtraRelease = True
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  
			  if ExtensionsXC.GetiOSVersionXC >= 16.0 then
			    
			    Declare sub setpreferredElementSize lib "UIKit" Selector "setPreferredElementSize:" (obj as ptr, sz as UIMenuElementSize)
			    
			    setpreferredElementSize(self.id, value)
			    
			  end if
			End Set
		#tag EndSetter
		preferredElementSize As UIMenuElementSize
	#tag EndComputedProperty


	#tag Enum, Name = UIMenuElementSize, Type = Integer, Flags = &h0
		small
		  medium
		large
	#tag EndEnum

	#tag Enum, Name = UIMenuOptions, Type = Integer, Flags = &h0
		displayInline = 1
		  destructive = 2
		  singleSelection = 32
		displayAsPalette = 128
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
		#tag ViewProperty
			Name="preferredElementSize"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UIMenuElementSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - small"
				"1 - medium"
				"2 - large"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
