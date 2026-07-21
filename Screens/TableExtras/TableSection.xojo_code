#tag Class
Protected Class TableSection
	#tag Method, Flags = &h0
		Sub AddRow(title As String, detail As String = "", Accessory As MobileTableCellData.AccessoryTypes = MobileTableCellData.AccessoryTypes.None, tag As Variant = nil, image As Picture = nil)
		  
		  dim row As new TableRow
		  row.title = title
		  row.detailText = detail
		  row.accessory = Accessory
		  row.image = image
		  row.tag = tag
		  
		  
		  
		  
		  rows.Add row
		  
		  //Makes sure that the added row will be displayed when the filter/search is removed
		  if allrows.Count > 0 then
		    allrows.Add row
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		allrows() As TableRow
	#tag EndProperty

	#tag Property, Flags = &h0
		collapsed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		footer As String
	#tag EndProperty

	#tag Property, Flags = &h0
		hidden As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		icon As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		rows() As TableRow
	#tag EndProperty

	#tag Property, Flags = &h0
		tag As Variant
	#tag EndProperty

	#tag Property, Flags = &h0
		title As String
	#tag EndProperty

	#tag Property, Flags = &h0
		type As String
	#tag EndProperty


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
			Name="collapsed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="icon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="footer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="hidden"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
