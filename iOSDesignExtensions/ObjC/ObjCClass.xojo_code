#tag Class
Protected Class ObjCClass
	#tag Method, Flags = &h0
		Sub AddMethod(selectorName as string, handle as ptr, signature as string)
		  #If TargetMacOS Or TargetIOS
		    
		    // SEL NSSelectorFromString(NSString *aSelectorName);
		    Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
		    Declare Function class_addMethod Lib "Foundation"(cls As Ptr, name As Ptr, imp As Ptr, types As CString) As Boolean
		    
		    Dim SEL As ptr = NSSelectorFromString(selectorName)
		    Dim IMP As ptr = handle
		    Dim types As CString = signature
		    
		    If Not class_addMethod(mClass, SEL, IMP, types) Then
		      Raise New ObjCException("The method """ + selectorName + """ could not be added to """ + Introspection.GetType(Self).name + """")
		    End If
		  #EndIf
		  
		  // The docs for signature can be found at:
		  
		  // https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtTypeEncodings.html#//apple_ref/doc/uid/TP40008048-CH100
		  
		  // Signature is the return type followed by @: (which refer to self and _cmd) followed by a series of characters indicating types. 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddProtocol(name as string)
		  #If TargetMacOS or TargetIOS
		    
		    Declare Function objc_getProtocol Lib "Foundation"(name As CString) As Ptr
		    Declare Function class_addProtocol Lib "Foundation"(Cls As Ptr, protocol As Ptr) As Boolean
		    
		    If Not class_addProtocol(mClass, objc_getProtocol(name)) Then
		      Raise New ObjCException("The protocol """ + name + """ could not be added to """ + Introspection.GetType(Self).name + """")
		    End If
		    
		    // BOOL class_conformsToProtocol(Class cls, Protocol *protocol);
		    Declare Function class_conformsToProtocol Lib "Foundation" ( cls As Ptr, protocol As Ptr ) As Boolean
		    If Not class_conformsToProtocol(mClass,  objc_getProtocol(name)) Then
		      Break
		    End If
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(className as string, superClassName as string = "NSObject", extraytes as integer = 0)
		  #If TargetMacOS Or TargetIOS
		    Declare Function NSClassFromString Lib "Foundation" (name As cfstringref) As ptr
		    Declare Function objc_allocateClassPair Lib "Foundation"(superclass As Ptr, name As CString, extraBytes As Integer) As Ptr
		    Declare Sub objc_registerClassPair Lib "Foundation"(cls As Ptr)
		    
		    mClass = objc_allocateClassPair(NSClassFromString(superClassName), className, extraytes)
		    If mClass = Nil Then
		      Raise New ObjCException("The class object was not created")
		    End If
		    
		    // register the class
		    objc_registerClassPair(mClass)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Register(retain as Boolean = False) As Ptr
		  #If TargetMacOS Or TargetIOS
		    // Initialize it
		    Declare Function Alloc Lib "Foundation" Selector "alloc" (cls As Ptr) As Ptr
		    Declare Function init Lib "Foundation" Selector "init" (cls As ptr) As ptr
		    Declare Function RetainObj Lib "Foundation" Selector "retain" (obj As Ptr) As Ptr
		    
		    
		    Dim obj As Ptr = init(alloc(mClass))
		    If Retain Then
		      obj = RetainObj(obj)
		    End If
		    Return obj
		  #EndIf
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared mCache As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mClass As ptr
	#tag EndProperty


	#tag Structure, Name = Block_Layout, Flags = &h0, Attributes = \"StructureAlignment \x3D 1"
		isa_ as Ptr
		  flags as int32
		  reserved as int32
		  invoke as ptr
		descriptor as ptr
	#tag EndStructure


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
End Class
#tag EndClass
