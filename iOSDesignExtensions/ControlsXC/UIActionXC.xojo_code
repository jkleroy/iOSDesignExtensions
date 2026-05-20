#tag Class
Class UIActionXC
Inherits UIMenuElementXC
	#tag Method, Flags = &h21
		Private Shared Function ClassRef() As Ptr
		  
		  static ref as Ptr = NSClassFromString("UIAction")
		  return ref
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(title As String, image As Picture, handler As OBJCBlock, identifier As String = "")
		  
		  '+ (instancetype)actionWithTitle:(NSString *)title 
		  'image:(UIImage *)image 
		  'identifier:(UIActionXCIdentifier)identifier 
		  'handler:(UIActionXCHandler)handler;
		  
		  
		  Declare function actionWithTitle_ lib "Foundation" selector "actionWithTitle:image:identifier:handler:" _
		  (obj as ptr, title As CFStringRef, image as ptr, identifier as CFStringRef, handler as ptr) as ptr
		  
		  Dim action As UIActionXC
		  Dim imgHandle As Ptr
		  
		  if image <> nil then
		    imgHandle = image.Handle
		  end if
		  
		  if identifier.IsEmpty then
		    super.constructor( actionWithTitle_((ClassRef), title, imgHandle, nil, handler.Handle) )
		  else
		    super.constructor( actionWithTitle_((ClassRef), title, imgHandle, identifier, handler.Handle) )
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateWithTitleImage(title As String, image As Picture, handler As ObjCBlock, identifier As String = "") As UIActionXC
		  
		  '+ (instancetype)actionWithTitle:(NSString *)title 
		  'image:(UIImage *)image 
		  'identifier:(UIActionXCIdentifier)identifier 
		  'handler:(UIActionXCHandler)handler;
		  
		  
		  Declare function actionWithTitle_ lib "Foundation" selector "actionWithTitle:image:identifier:handler:" _
		  (obj as ptr, title As CFStringRef, image as ptr, identifier as CFStringRef, handler as ptr) as ptr
		  
		  Dim action As UIActionXC
		  Dim imgHandle As Ptr
		  
		  if image <> nil then
		    imgHandle = image.Handle
		  end if
		  
		  if identifier.IsEmpty then
		    Return new UIActionXC(actionWithTitle_((ClassRef), title, imgHandle, nil, handler.Handle))
		  else
		    Return new UIActionXC(actionWithTitle_((ClassRef), title, imgHandle, identifier, handler.Handle))
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAttributes(value As UInteger)
		  
		  Declare sub setAttributes_ lib "UIKit" selector "setAttributes:" (obj as ptr, value as UInteger)
		  
		  SetAttributes_(self, value)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  Declare function identifier_ lib "UIKit" selector "identifier" (obj as ptr) as CFStringRef
			  
			  Return identifier_(self)
			End Get
		#tag EndGetter
		identifier As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  
			  // @property (nonatomic) UIMenuElementState state;
			  
			  'Declare Sub setState Lib "Foundation" selector "setState:" (obj as ptr, value as UIMenuElementState)
			  Declare Sub setState Lib "Foundation" selector "setState:" (obj as ptr, value as UIMenuElementState)
			  
			  
			  
			  setState(self.id, value)
			End Set
		#tag EndSetter
		state As UIMenuElementState
	#tag EndComputedProperty


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
			Name="identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="state"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="UIMenuElementState"
			EditorType="Enum"
			#tag EnumValues
				"0 - off"
				"1 - on"
				"2 - mixed"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
