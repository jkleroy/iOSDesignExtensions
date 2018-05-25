#tag Module
Protected Module TableExtensionsXC
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthDetailXC(extends cell As iOSTableCellData, lines As Integer = -1)
		  
		  Dim label As Ptr
		  
		  declare function getTextLabel lib "UIKit.framework" selector "detailTextLabel" (obj_ref as ptr) as ptr
		  label = getTextLabel(cell.Handle)
		  
		  If lines > 0 Then
		    Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		    setNumberOfLines label, lines
		  End If
		  
		  Declare sub setAdjustsFontSizeToFitWidth lib "UIKit.framework" selector "setAdjustsFontSizeToFitWidth:" (id as ptr, value as Boolean)
		  setAdjustsFontSizeToFitWidth label, True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXC(extends cell As iOSTableCellData, lines As Integer = -1)
		  
		  Dim label As Ptr
		  
		  declare function getTextLabel lib "UIKit.framework" selector "textLabel" (obj_ref as ptr) as ptr
		  label = getTextLabel(cell.Handle)
		  
		  If lines > 0 Then
		    Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		    setNumberOfLines label, lines
		  End If
		  
		  Declare sub setAdjustsFontSizeToFitWidth lib "UIKit.framework" selector "setAdjustsFontSizeToFitWidth:" (id as ptr, value as Boolean)
		  setAdjustsFontSizeToFitWidth label, True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BackgroundUIColorXC(extends action As iOSTableRowAction, uic as ptr)
		  
		  
		  
		  declare sub setBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (obj_id as ptr, col as ptr)
		  SetBackgroundColor(action.handle, uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlashScrollIndicatorsXC(extends table As iOSTable)
		  Declare Sub flashScrollIndicators_ Lib "UIKit.framework" selector "flashScrollIndicators" (obj_id As ptr)
		  flashScrollIndicators_(table.Handle)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetHeaderViewXC(extends table As iOSTable) As ptr
		  
		  declare function tableHeaderView lib "UIKit.framework" selector "tableHeaderView" (obj_id as ptr) as ptr
		  
		  return tableHeaderView(table.Handle)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E742076697369626C652073656374696F6E2F726F772E2052657475726E73202D312C2D31206966207461626C6520697320656D707479
		Function GetScrollPositionXC(extends table As iOSTable) As Integer()
		  
		  Declare Function indexPathsForVisibleRows Lib "UIKit.framework" selector "indexPathsForVisibleRows" (obj_id As ptr) As ptr
		  
		  Dim indexArray As ptr = indexPathsForVisibleRows(table.Handle)
		  
		  
		  
		  If indexArray <> Nil Then
		    
		    Declare Function objectAtIndex Lib "Foundation.framework" selector "objectAtIndex:" (theArray As Ptr, idx As Integer) As Ptr
		    Declare Function getRow Lib "Foundation.framework" selector "row" (obj_id As ptr) As Integer
		    Declare Function getSection Lib "Foundation.framework" selector "section" (obj_id As ptr) As Integer
		    
		    
		    Dim indexPath As Ptr = objectAtIndex(indexArray, 0)
		    
		    
		    Dim section, row As Integer
		    
		    section = getSection(indexPath)
		    row = getRow(indexPath)
		    
		    Return Array(section, row)
		  End If
		  
		  Return Array(-1, -1)
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetAllowsSelectionXC(extends table As iOSTable, value As Boolean)
		  
		  Declare Sub setallowsSelection Lib "UIKit.framework" Selector "setAllowsSelection:" (id as ptr, value as Boolean)
		  
		  setallowsSelection(table.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundColorXC(extends cell As iOSTableCellData, value as Color)
		  
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  
		  Declare Sub setBackgroundColor_ Lib "UIKit.framework" selector "setBackgroundColor:" (obj_id As ptr, col As ptr)
		  setBackgroundColor_(cell.handle, uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundColorXC(extends action As iOSTableRowAction, value as Color)
		  
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  action.BackgroundUIColorXC(uic)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setBouncesXC(extends table As iostable, value As Boolean)
		  
		  declare sub bounces_ lib "UIKit.framework" selector "setBounces:" (obj_id as ptr, value as Boolean)
		  bounces_(table.handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDetailTextColorXC(extends cell As iOSTableCellData, value As Color)
		  
		  Dim label As Ptr
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  end if
		  
		  declare function getTextLabel lib "UIKit.framework" selector "detailTextLabel" (obj_ref as ptr) as ptr
		  label = getTextLabel(cell.Handle)
		  
		  declare sub setTextColor lib "UIKit.framework" selector "setTextColor:" (obj_id as ptr, col as ptr)
		  setTextColor(label,  uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520666F6E7420666F72205465787420616E642044657461696C546578742E204C656176696E672064657461696C466F6E744E616D6520656D7074792077696C6C20736574207468652073616D6520666F6E7420666F7220626F74682E
		Sub SetFontsXC(extends cell As iOSTableCellData, textFontName as Text, textFontSize as Double, detailFontName as Text = "", detailFontSize As Double = 0.0)
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  Declare Function initFont Lib "UIKit.framework" selector "fontWithName:size:" (obj_id As ptr, name As CFStringRef, size As CGFloat) As ptr
		  
		  Dim fontPtr As ptr
		  fontPtr = initFont(NSClassFromString("UIFont"), textFontName, textFontSize)
		  
		  
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "textLabel" (obj_ref As ptr) As ptr
		  Declare Function getDetailTextLabel Lib "UIKit.framework" selector "detailTextLabel" (obj_ref As ptr) As ptr
		  Declare sub setFont lib "UIKit.framework" selector "setFont:" (obj_ref as ptr, fontRef as ptr)
		  
		  Dim label As Ptr
		  label = getTextLabel(cell.Handle)
		  
		  setFont(label, fontPtr)
		  
		  
		  
		  Dim detailLabel As Ptr
		  detailLabel = getDetailTextLabel(cell.Handle)
		  
		  If detailFontName.Empty Then
		    setFont(detailLabel, fontPtr)
		  Else
		    Dim detailfontPtr As ptr
		    detailFontPtr = initFont(NSClassFromString("UIFont"), detailFontName, detailFontSize)
		    setFont(detailLabel, detailfontPtr)
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFooterViewXC(extends table As iOSTable, footerView As ptr)
		  
		  declare sub tableFooterView lib "UIKit.framework" selector "setTableFooterView:" (obj_id as ptr, headerv as ptr)
		  
		  tableFooterView(table.Handle, footerView)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetHeaderViewXC(extends table As iOSTable, headerView As ptr)
		  
		  declare sub tableHeaderView lib "UIKit.framework" selector "setTableHeaderView:" (obj_id as ptr, headerv as ptr)
		  
		  tableHeaderView(table.Handle, headerView)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetHideRemainingSeparatorsXC(extends table As iOSTable)
		  
		  Declare Function initWithFrame Lib "Foundation.framework" selector "initWithFrame:" (obj_id As ptr, frame As ExtensionsXC.xcCGRect) As ptr
		  dim frame as ExtensionsXC.xcCGRect
		  
		  
		  frame.origin.x = 0
		  frame.origin.y = 0
		  frame.rsize.height = 0
		  frame.rsize.width = 0
		  
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  
		  
		  Dim view As ptr = initwithFrame(alloc(NSClassFromString("UIView")), frame)
		  
		  table.SetFooterViewXC(view)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetIconXC(extends action As iOSTableRowAction, icon As iOSImage, backColor As Color, width As Integer = 70, height As Integer = 44)
		  
		  If icon Is Nil Then Return
		  
		  
		  
		  
		  
		  //declare function NSClassFromString lib "Foundation.Framework" (aClassName as CFStringRef) as Ptr
		  Declare Function NSClassFromString Lib "Foundation" (aClassName As CFStringRef) As Ptr
		  Soft Declare Function scale Lib "UIKit" selector "scale" (classRef As Ptr) As CGFloat
		  Soft Declare Function mainScreen Lib "UIKit" selector "mainScreen" (classRef As Ptr) As ptr
		  
		  
		  Dim scale As Double = scale(mainScreen(NSClassFromString("UIScreen")))
		  
		  //Creating a bitmap that will hold the icon
		  Dim img As New iOSBitmap(width, height, scale)
		  Dim g As iOSGraphics = img.Graphics
		  g.Scale(scale, scale)
		  
		  g.FillColor = backColor
		  g.FillRect(0, 0, g.Width, g.Height)
		  
		  g.DrawImage(icon, (g.Width-icon.Width)/2, (g.Height-icon.Height)/2)
		  
		  Declare Function objc_getClass Lib "/usr/lib/libobjc.dylib" (aClassName As CString) As Ptr
		  Dim theUIColorClassRef As Ptr =  objc_getClass("UIColor")
		  
		  //Creating a UIColor using the bitmap as a pattern
		  Declare Function decl_GetColorWithRGBA Lib "UIKit" selector "colorWithPatternImage:" (UIColorClassRef As Ptr, imgRef As Ptr) As Ptr
		  Dim uic As ptr = decl_GetColorWithRGBA(theUIColorClassRef, img.Image.Handle)
		  
		  Declare Sub setBackgroundColor Lib "UIKit.framework" selector "setBackgroundColor:" (obj_id As ptr, col As ptr)
		  SetBackgroundColor(action.handle, uic)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4368616E676520746865207363726F6C6C20696E64696361746F7220636F6C6F7220746F205768697465206F7220426C61636B
		Sub SetIndicatorStyleXC(extends table as iOSTable, value as ScrollViewExtensionsXC.UIScrollViewIndicatorStyle)
		  
		  Declare Sub setIndicatorStyle_ Lib "UIKit.framework" selector "setIndicatorStyle:" (obj_id As ptr, value As ScrollViewExtensionsXC.UIScrollViewIndicatorStyle)
		  setIndicatorStyle_(table.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollEnabledXC(extends table as iOSTable, value As Boolean)
		  
		  Declare Sub scrollEnabled Lib "UIKit.framework" selector "setScrollEnabled:" (obj_id As ptr, value As Boolean)
		  
		  scrollenabled(table.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetScrollsToTopXC(extends table as iOSTable, value As Boolean)
		  
		  Declare Sub scrollsToTop_ Lib "UIKit.framework" selector "setScrollsToTop:" (obj_id As ptr, value As Boolean)
		  
		  scrollsToTop_(table.Handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectedBackgroundColorXC(extends cell As iOSTableCellData, value as Color)
		  
		  
		  
		  'UIView *bgColorView = [[UIView alloc] init];
		  'bgColorView.backgroundColor = [UIColor redColor];
		  '[cell setSelectedBackgroundView:bgColorView];
		  
		  Declare Function init Lib "Foundation.framework" selector "init" (obj_id As ptr) As ptr
		  Declare Function alloc Lib "Foundation.framework" selector "alloc" (clsRef As ptr) As ptr
		  Declare Function NSClassFromString Lib "Foundation.framework" (clsName As CFStringRef) As ptr
		  Declare Sub setBackgroundColor_ Lib "UIKit.framework" selector "setBackgroundColor:" (obj_id As ptr, col As ptr)
		  
		  Dim bgColorView As ptr = init(alloc(NSClassFromString("UIView")))
		  
		  
		  Dim uic As UIColor
		  If value.Alpha = 255 Then
		    uic = UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  setBackgroundColor_(bgColorView, uic)
		  
		  
		  Declare Sub setSelectedBackgroundView_ Lib "UIKit.framework" selector "setSelectedBackgroundView:" (obj_id As ptr, view As ptr)
		  setSelectedBackgroundView_(cell.Handle, bgColorView)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectedDetailTextColorXC(extends cell As iOSTableCellData, value as Color)
		  
		  Dim label As Ptr
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "detailTextLabel" (obj_ref As ptr) As ptr
		  
		  label = getTextLabel(cell.Handle)
		  
		  
		  Dim uic As UIColor
		  If value.Alpha = 255 Then
		    uic = UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  
		  
		  Declare Sub setHighlightedTextColor_ Lib "UIKit.framework" selector "setHighlightedTextColor:" (obj_id As ptr, col As ptr)
		  setHighlightedTextColor_(label, uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectedTextColorXC(extends cell As iOSTableCellData, value as Color)
		  
		  Dim label As Ptr
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "textLabel" (obj_ref As ptr) As ptr
		  
		  
		  label = getTextLabel(cell.Handle)
		  
		  
		  Dim uic As UIColor
		  If value.Alpha = 255 Then
		    uic = UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  
		  
		  
		  Declare Sub setHighlightedTextColor_ Lib "UIKit.framework" selector "setHighlightedTextColor:" (obj_id As ptr, col As ptr)
		  setHighlightedTextColor_(label, uic)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSelectionStyleXC(extends cell As iOSTableCellData, style As TableExtensionsXC.selectionStyle)
		  
		  Declare Sub setselectionStyle_ Lib "UIKit.framework" selector "setSelectionStyle:" (obj_id As ptr, style As selectionStyle)
		  
		  setselectionStyle_(cell.Handle, style)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C20726F772073656C656374696F6E73
		Sub SetSeparatorStyleXC(extends table As iOSTable, value As TableExtensionsXC.separatorStyle)
		  Declare Sub setSeparatorStyle Lib "UIKit.framework" selector "setSeparatorStyle:"(o As ptr, mode As separatorStyle)
		  
		  setSeparatorStyle(table.handle, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTableCellBreakXC(extends cell As iOSTableCellData, BreakValue As ControlExtensionsXC.NSLineBreakMode)
		  
		  
		  Dim label As Ptr
		  
		  declare function getTextLabel lib "UIKit.framework" selector "textLabel" (obj_ref as ptr) as ptr
		  
		  
		  label = getTextLabel(cell.Handle)
		  
		  Declare sub setLineBreakMode lib "UIKit.framework" selector "setLineBreakMode:" (id as ptr, value as ControlExtensionsXC.NSLineBreakMode)
		  setLineBreakMode label, BreakValue
		  
		  Declare sub setNumberOfLines lib "UIKit.framework" selector "setNumberOfLines:" (id as ptr, value as integer)
		  setNumberOfLines label, 3
		  
		  
		  declare sub setBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (obj_id as ptr, col as ptr)
		  SetBackgroundColor(label, New UIColor(&cFFFFFF))
		  
		  cell.AdjustsFontSizeToFitWidthXC()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTableCellDetailBreakXC(extends cell As iOSTableCellData, BreakValue As ControlExtensionsXC.NSLineBreakMode)
		  
		  
		  Dim label As Ptr
		  
		  declare function getTextLabel lib "UIKit.framework" selector "detailTextLabel" (obj_ref as ptr) as ptr
		  
		  
		  label = getTextLabel(cell.Handle)
		  
		  Declare Sub setLineBreakMode Lib "UIKit.framework" selector "setLineBreakMode:" (id As ptr, value As ControlExtensionsXC.NSLineBreakMode)
		  setLineBreakMode label, BreakValue
		  
		  Declare sub setNumberOfLines lib "UIKit.framework" selector "setNumberOfLines:" (id as ptr, value as integer)
		  setNumberOfLines label, 3
		  
		  
		  declare sub setBackgroundColor lib "UIKit.framework" selector "setBackgroundColor:" (obj_id as ptr, col as ptr)
		  SetBackgroundColor(label, new UIColor(&cFFFFFF))
		  
		  cell.AdjustsFontSizeToFitWidthXC()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTextColorXC(extends cell As iOSTableCellData, value As Color)
		  
		  
		  Dim label As Ptr
		  
		  
		  Dim uic As UIKit.UIColor
		  
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "textLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(cell.Handle)
		  
		  
		  Declare Sub setTextColor_ Lib "UIKit.framework" selector "setTextColor:" (obj_id As ptr, col As ptr)
		  setTextColor_(label, uic)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextColorXC(extends cell As iOSTableCellData, assigns value As Color)
		  
		  
		  cell.SetTextColorXC(value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52656D6F76657320616C6C20726F772073656C656374696F6E73
		Sub UnselectTableRowXC(extends table As iOSTable)
		  declare sub selectRow lib "UIKit.framework" selector "selectRowAtIndexPath:animated:scrollPosition:" (id as Ptr, row as Ptr, animated as boolean, scrollPosition as integer)
		  
		  selectRow(table.Handle, nil, false, 0)
		End Sub
	#tag EndMethod


	#tag Enum, Name = selectionStyle, Type = Integer, Flags = &h1
		none = 0
		  blue
		  grey
		default
	#tag EndEnum

	#tag Enum, Name = separatorStyle, Type = Integer, Flags = &h1
		none = 0
		singleLine
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
