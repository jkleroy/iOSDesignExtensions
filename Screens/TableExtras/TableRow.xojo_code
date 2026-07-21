#tag Class
Protected Class TableRow
	#tag Method, Flags = &h0
		Function Clone() As TableRow
		  
		  Dim row As new TableRow
		  
		  row.accessory = accessory
		  row.cellType = cellType
		  row.cellTypeName = cellTypeName
		  row.detailText = detailText
		  row.editable = editable
		  row.image = image
		  row.movable = movable
		  row.Selectable = selectable
		  row.styledText = styledText
		  row.tag = tag
		  row.TextColor = TextColor
		  row.title = title
		End Function
	#tag EndMethod


	#tag Note, Name = Notes
		
		Not used for the moment
	#tag EndNote


	#tag Property, Flags = &h0
		accessory As MobileTableCellData.AccessoryTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		cellType As Introspection.TypeInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		cellTypeName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		configuration As ControlsXC.UIListContentConfiguration
	#tag EndProperty

	#tag Property, Flags = &h0
		detailText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		editable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		fieldname As String
	#tag EndProperty

	#tag Property, Flags = &h0
		image As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		InputType As MobileTextField.InputTypes = MobileTextField.InputTypes.Default
	#tag EndProperty

	#tag Property, Flags = &h0
		movable As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		selectable As RowSelectable = RowSelectable.Default
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 53686F756C6420626520616E204E5341747472696275746564537472696E67
		styledText As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		tag As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As Color = &c000001
	#tag EndProperty

	#tag Property, Flags = &h0
		title As String
	#tag EndProperty


	#tag Enum, Name = RowSelectable, Type = Integer, Flags = &h0
		Default
		  Yes
		No
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
			Name="title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="detailText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="accessory"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="MobileTableCellData.AccessoryTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Disclosure"
				"2 - InfoAndDisclosure"
				"3 - Checkmark"
				"4 - Info"
			#tag EndEnumValues
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
			Name="editable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="movable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000001"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="cellTypeName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="selectable"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="RowSelectable"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Yes"
				"2 - No"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="fieldname"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputType"
			Visible=false
			Group="Behavior"
			InitialValue="MobileTextField.InputTypes.Default"
			Type="MobileTextField.InputTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"2 - NumbersAndPunctuation"
				"3 - URL"
				"4 - Numbers"
				"5 - Phone"
				"6 - NamePhone"
				"7 - Email"
				"8 - Decimal"
				"9 - Twitter"
				"10 - WebSearch"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
