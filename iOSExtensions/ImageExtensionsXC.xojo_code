#tag Module
Protected Module ImageExtensionsXC
	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D6167652074686174206973206175746F6D61746963616C6C7920666C697070656420666F722052544C206C616E677561676573
		Protected Function ImageForRTLXC(image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Declare Function imageFlippedForRightToLeftLayoutDirection Lib "UIKit.framework" selector "imageFlippedForRightToLeftLayoutDirection" (id As ptr) As ptr
		  
		  Return iOSImage.FromHandle(imageFlippedForRightToLeftLayoutDirection(image.Handle))
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D61676520746861742077696C6C20616C776179732072656E646572207573696E6720697473207472756520636F6C6F7273
		Protected Function ImageOriginalXC(image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  Const UIImageRenderingModeAlwaysOriginal = 1
		  
		  Declare Function imageWithRenderingMode Lib "UIKit.framework" selector "imageWithRenderingMode:" (id As ptr, RenderingMode As Integer) As ptr
		  
		  Return iOSImage.FromHandle(imageWithRenderingMode(image.Handle, UIImageRenderingModeAlwaysOriginal))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ImageWithColorXC(image as iOSImage, value as Color) As iOSImage
		  
		  
		  
		  If image Is Nil Then Return Nil
		  
		  Dim b As New iOSBitmap(image.Width, image.Height, image.Scale)
		  Dim g As iOSGraphics = b.Graphics
		  g.Scale(b.Scale, b.Scale)
		  Dim tmp As iOSImage = imageWithMaskXC(image)
		  
		  g.FillColor = value
		  
		  g.DrawImage(tmp, 0, 0, tmp.Width, tmp.Height)
		  
		  Return b.Image
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ImageWithMaskXC(image As iOSImage) As iOSImage
		  
		  //Creates an image that will draw using the current Fillcolor
		  
		  const UIImageRenderingModeAlwaysTemplate = 2
		  
		  Declare Function imageWithRenderingMode lib "UIKit.framework" selector "imageWithRenderingMode:" (id as ptr, RenderingMode as Integer) as ptr
		  
		  Return iOSImage.FromHandle(imageWithRenderingMode(image.Handle, UIImageRenderingModeAlwaysTemplate))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320616E20696D6167652066726F6D2074686520694F5331332053462053796D626F6C206C696272617279
		Protected Function SystemImageXC(name As Text, fallback As iOSImage = nil) As iOSImage
		  gith
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13.0 then
		    
		    Declare Function systemImageNamed lib "UIKit.framework" selector "systemImageNamed:" (cls as ptr, name as CFStringRef) as ptr
		    declare function NSClassFromString lib "Foundation.framework" (clsName as CFStringRef) as ptr
		    
		    Dim imgRef As ptr = systemImageNamed(NSClassFromString("UIImage"), name)
		    
		    if imgRef <> nil then
		      
		      Return iOSImage.FromHandle(imgRef)
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
