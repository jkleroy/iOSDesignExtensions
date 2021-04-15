#tag Module
Protected Module ImageExtensionsXC
	#tag Method, Flags = &h1
		Protected Function BestRepresentationXC(image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  if image.ImageCount = 0 then Return image
		  
		  Dim scale As Double = ExtensionsXC.MainScreenScaleXC
		  
		  Return image.BestRepresentation(image.Width, image.Height, scale)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D6167652074686174206973206175746F6D61746963616C6C7920666C697070656420666F722052544C206C616E677561676573
		Protected Function ImageForRTLXC(image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  //Creates an image that is automatically flipped for RTL languages
		  
		  Declare Function imageFlippedForRightToLeftLayoutDirection Lib "UIKit.framework" selector "imageFlippedForRightToLeftLayoutDirection" (id As ptr) As ptr
		  
		  Return Picture.FromHandle(imageFlippedForRightToLeftLayoutDirection(bestImage.Handle))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D61676520746861742077696C6C20616C776179732072656E646572207573696E6720697473207472756520636F6C6F7273
		Protected Function ImageOriginalXC(image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Const UIImageRenderingModeAlwaysOriginal = 1
		  
		  Declare Function imageWithRenderingMode Lib "UIKit.framework" selector "imageWithRenderingMode:" (id As ptr, RenderingMode As Integer) As ptr
		  
		  'Dim imgHandle As Ptr = image.CopyOSHandle(Picture.HandleType.iOSUIImage)
		  
		  
		  'Return Picture.FromHandle(imageWithRenderingMode(imgHandle, UIImageRenderingModeAlwaysOriginal))
		  Return Picture.FromHandle(imageWithRenderingMode(bestImage.Handle, UIImageRenderingModeAlwaysOriginal))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ImageWithBrushXC(image as Picture, brush as GraphicsBrush) As Picture
		  
		  
		  
		  If image Is Nil Then Return Nil
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  Dim scale As Double = bestImage.VerticalResolution/72
		  
		  Dim b As New Picture(bestImage.Width, bestImage.Height)
		  b.VerticalResolution = bestImage.VerticalResolution
		  b.HorizontalResolution = bestImage.HorizontalResolution
		  
		  Dim g As Graphics = b.Graphics
		  g.Scale(scale, scale)
		  Dim tmp As Picture = imageWithMaskXC(bestImage)
		  
		  g.Brush = brush
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  g.DrawingColor = &cFFFFFF
		  
		  'g.DrawPicture(tmp, 0, 0, tmp.Width, tmp.Height)
		  g.DrawPicture(tmp, 0, 0)
		  
		  Return b
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ImageWithColorXC(image as Picture, value as Color) As Picture
		  
		  
		  
		  
		  If image Is Nil Then Return Nil
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  Dim scale As Double = bestImage.VerticalResolution/72
		  
		  Dim b As New Picture(bestImage.Width, bestImage.Height)
		  b.VerticalResolution = bestImage.VerticalResolution
		  b.HorizontalResolution = bestImage.HorizontalResolution
		  
		  Dim g As Graphics = b.Graphics
		  g.Scale(scale, scale)
		  Dim tmp As Picture = imageWithMaskXC(bestImage)
		  
		  g.DrawingColor = value
		  
		  
		  g.DrawPicture(tmp, 0, 0)
		  
		  Return b
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ImageWithMaskXC(image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  const UIImageRenderingModeAlwaysTemplate = 2
		  
		  Declare Function imageWithRenderingMode lib "UIKit.framework" selector "imageWithRenderingMode:" (id as ptr, RenderingMode as Integer) as ptr
		  
		  
		  'Dim imgHandle As Ptr = image.CopyOSHandle(Picture.HandleType.iOSUIImage)
		  
		  
		  'Return Picture.FromHandle(imageWithRenderingMode(imgHandle, UIImageRenderingModeAlwaysTemplate))
		  Return Picture.FromHandle(imageWithRenderingMode(bestImage.Handle, UIImageRenderingModeAlwaysTemplate))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 4372656174657320616E642072657475726E732061206E657720696D616765206F626A656374207769746820746865207370656369666965642063617020696E736574732E
		Protected Function ResizableTiledImageXC(CapInsets As ExtensionsXC.xcUIEdgeInsets, image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  Declare Function resizableImageWithCapInsets Lib "UIKit.framework" selector "resizableImageWithCapInsets:" (id As ptr, insets As ExtensionsXC.xcUIEdgeInsets) As ptr
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  Return Picture.FromHandle (resizableImageWithCapInsets(bestImage.handle, CapInsets))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D6167652066726F6D2074686520694F5331332053462053796D626F6C206C696272617279
		Protected Function SystemImageXC(name As String, fallback As Picture = nil) As Picture
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13.0 then
		    
		    Declare Function systemImageNamed lib "UIKit.framework" selector "systemImageNamed:" (cls as ptr, name as CFStringRef) as ptr
		    declare function NSClassFromString lib "Foundation.framework" (clsName as CFStringRef) as ptr
		    
		    Dim imgRef As ptr = systemImageNamed(NSClassFromString("UIImage"), name)
		    
		    if imgRef <> nil then
		      
		      Return Picture.FromHandle(imgRef)
		    Else
		      Break //image doesn't exist
		      Return fallback
		    end if
		    
		  Else
		    //iOS version prior to 13.0
		    Return fallback
		  end if
		  
		End Function
	#tag EndMethod


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
