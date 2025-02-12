#tag Module
Protected Module MapViewerExtensionsXC
	#tag Method, Flags = &h0
		Sub AddPolyLineXC(extends map as MobileMapViewer, coordinates() as Pair)
		  declare function NSClassFromString lib "Foundation" (clsName as cfstringref) as ptr
		  declare function polylineWithCoordinates lib MapKitLib selector "polylineWithCoordinates:count:" (obj as ptr, coord as ptr, cnt as UInteger) as ptr
		  
		  declare sub addOverlay lib MapKitLib selector "addOverlay:" (obj as ptr, overlay as ptr)
		  'declare function malloc lib "/usr/lib/libobjc.A.dylib" (size as UInteger) as ptr
		  
		  
		  
		  Var mb As New MemoryBlock(0)
		  Var bs As New BinaryStream(mb)
		  
		  
		  
		  
		  For each c as pair in coordinates
		    bs.WriteDouble(c.Left.DoubleValue)
		    bs.WriteDouble(c.Right.DoubleValue)
		  Next c
		  bs.Close
		  
		  Dim mbPtr As Ptr = mb.Ptr(0)
		  
		  dim polyline As Ptr = polylineWithCoordinates(NSClassFromString("MKPolyline"), mb, coordinates.Count)
		  
		  addOverlay(map.Handle, polyline)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetMapTypeXC(extends map As MobileMapViewer, value As MapViewerExtensionsXC.MKMapType)
		  
		  Declare sub setMapType lib MapKitLib selector "setMapType:" (obj as ptr, value as MKMapType)
		  
		  setMapType(map.Handle, value)
		End Sub
	#tag EndMethod


	#tag Constant, Name = MapKitLib, Type = String, Dynamic = False, Default = \"MapKit", Scope = Protected
	#tag EndConstant


	#tag Enum, Name = MKMapType, Type = Integer, Flags = &h0
		standard = 0
		  satellite
		  hybrid
		  satelliteFlyover
		  hybridFlyover
		mutedStandard
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
