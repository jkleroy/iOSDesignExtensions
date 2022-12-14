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
		  
		  If bestImage.Handle = nil and image.Type = Picture.Types.MutableBitmap then
		    
		    Return Picture.FromHandle(imageWithRenderingMode(image.CopyOSHandle(Picture.HandleType.iOSUIImage), UIImageRenderingModeAlwaysOriginal))
		    
		  Elseif bestImage.Handle = nil and image.Type = Picture.types.Image then
		    Return Picture.FromHandle(imageWithRenderingMode(bestimage.CopyOSHandle(Picture.HandleType.iOSUIImage), UIImageRenderingModeAlwaysOriginal))
		  Else
		    
		    'Return Picture.FromHandle(imageWithRenderingMode(imgHandle, UIImageRenderingModeAlwaysOriginal))
		    Return Picture.FromHandle(imageWithRenderingMode(bestImage.Handle, UIImageRenderingModeAlwaysOriginal))
		  End If
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
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13 then
		    //Thanks to Yvonnick Maçon https://tracker.xojo.com/xojoinc/xojo/-/issues/71220#note_545958
		    'https://developer.apple.com/documentation/uikit/uiimage/3327300-imagewithtintcolor?language=objc
		    
		    declare function imageWithTintColor_ lib "UIKit" selector "imageWithTintColor:" ( img as ptr, tint as ptr ) as ptr
		    
		    
		    dim newimage as ptr = imageWithTintColor_( bestImage.Handle, UIColorFromColor( value ) )
		    
		    dim pp as Picture = Picture.FromHandle( newimage )
		    
		    Return pp
		    
		    
		    
		    
		  Else
		    
		    Const UIImageRenderingModeAlwaysOriginal = 1
		    Declare Function imageWithRenderingMode Lib "UIKit.framework" selector "imageWithRenderingMode:" (id As ptr, RenderingMode As Integer) As ptr
		    
		    
		    
		    Dim scale As Double = bestImage.VerticalResolution/72
		    
		    Dim b As New Picture(bestImage.Width, bestImage.Height)
		    b.VerticalResolution = bestImage.VerticalResolution
		    b.HorizontalResolution = bestImage.HorizontalResolution
		    
		    Dim g As Graphics = b.Graphics
		    g.Scale(scale, scale)
		    Dim tmp As Picture = imageWithMaskXC(bestImage)
		    
		    g.DrawingColor = value
		    
		    
		    g.DrawPicture(tmp, 0, 0)
		    
		    
		    Return Picture.FromHandle(imageWithRenderingMode(b.CopyOSHandle(Picture.HandleTypes.iOSUIImage), UIImageRenderingModeAlwaysOriginal))
		    
		    Return b
		    
		  end if
		  
		  
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

	#tag Method, Flags = &h0
		Sub SaveToCameraRollXC(extends pic As Picture)
		  
		  'Jason King
		  'Just saw this conversation - its entirely possible with declares. Just pop this short function into a module and call it like "img.SaveToCameraRoll"
		  
		  
		  declare sub UIImageWriteToSavedPhotosAlbum lib "UIKit" (img as ptr, target as ptr, sel as ptr, info as ptr)
		  UIImageWriteToSavedPhotosAlbum(pic.CopyOSHandle(picture.HandleTypes.iOSUIImage),nil,nil,nil)
		  
		  
		  
		End Sub
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

	#tag Method, Flags = &h0, Description = 4170706C6965732054656D706C6174652072656E646572696E67206D6F646520746F207573652074686520636F6E74726F6C27732054696E74436F6C6F72
		Function ToTemplateXC(extends image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  Dim bestImage As Picture = BestRepresentationXC(image)
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  const UIImageRenderingModeAlwaysTemplate = 2
		  
		  Declare Function imageWithRenderingMode lib "UIKit.framework" selector "imageWithRenderingMode:" (id as ptr, RenderingMode as Integer) as ptr
		  
		  
		  'Dim imgHandle As Ptr = image.CopyOSHandle(Picture.HandleType.iOSUIImage)
		  
		  #if DebugBuild
		    if bestImage.Handle = nil then
		      Break
		    end if
		  #endif
		  
		  'Return Picture.FromHandle(imageWithRenderingMode(imgHandle, UIImageRenderingModeAlwaysTemplate))
		  Return Picture.FromHandle(imageWithRenderingMode(bestImage.Handle, UIImageRenderingModeAlwaysTemplate))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UIColorFromColor(value as color) As ptr
		  Soft Declare Function colorWithRGBA Lib "UIKit" Selector "colorWithRed:green:blue:alpha:" (UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  
		  Soft Declare Function NSClassFromString Lib "Foundation" (classname As CFStringRef) As Ptr
		  
		  
		  static UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  
		  Dim c as color  = value
		  
		  Dim red As CGFloat = c.red / 255
		  Dim green As CGFloat = c.Green / 255
		  Dim blue As CGFloat = c.Blue / 255
		  Dim alpha As CGFloat = 1.0 - c.Alpha / 255
		  
		  Dim colorPtr As ptr = colorWithRGBA(UIColorClassPtr, red, green, blue, alpha)
		  
		  Return colorPtr
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
