#tag Module
Protected Module TableSearchExtensionsXC
	#tag Method, Flags = &h0
		Function GetSearchFilterIndexXC(extends table as iOSMobileTable) As Integer
		  // Get the searchbar from the search controller
		  Declare Function searchBar Lib "UIKit" selector "searchBar" (obj As ptr) As ptr
		  Var searchPtr As ptr = table.SearchControllerHandle
		  
		  Var searchBarObj As ptr = searchBar(searchPtr)
		  
		  // Ask the searchbar for the index of the selected scope
		  Declare Function selectedScopeButtonIndex Lib "UIKit" selector "selectedScopeButtonIndex" (obj As ptr) As Integer
		  Return selectedScopeButtonIndex(searchBarObj)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPreferredSearchBarPlacementXC(extends screen as MobileScreen, placement as TableSearchExtensionsXC.SearchBarPlacement)
		  
		  Declare Function navigationItem Lib "UIKit" _
		  Selector "navigationItem" (vc As Ptr) As Ptr
		  Declare Sub setPreferredSearchBarPlacement Lib "UIKit" _
		  Selector "setPreferredSearchBarPlacement:" (navItem As Ptr, placement As SearchBarPlacement)
		  
		  Declare Function respondsToSelector Lib "Foundation" Selector "respondsToSelector:" (obj As ptr, aSelector As Ptr) As Boolean
		  Declare Function NSSelectorFromString Lib "Foundation" ( aSelectorName As CFStringRef ) As Ptr
		  
		  
		  Dim navItem As Ptr = navigationItem(screen.ViewControllerHandle)
		  If navItem = Nil Then Return
		  
		  Dim sel As Ptr = NSSelectorFromString("setPreferredSearchBarPlacement:")
		  
		  If respondsToSelector(navItem, sel) Then
		    
		    if ExtensionsXC.GetiOSVersionXC < 26.0 and CType(placement, integer) > 1 then
		      placement = SearchBarPlacement.Automatic //Revert to automatic
		    End If
		    
		    setPreferredSearchBarPlacement(navItem, placement)
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSearchActiveXC(extends table As iOSMobileTable, value As Boolean)
		  
		  
		  
		  // Put them on the searchbar
		  Declare Function searchBar Lib "UIKit" selector "searchBar" (obj As ptr) As ptr
		  Var searchPtr As ptr = table.SearchControllerHandle
		  
		  Declare sub setActive lib "UIKit" selector "setActive:" (obj as ptr, value as Boolean)
		  setActive(searchPtr, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 694F5331332B
		Sub SetSearchFieldTextColorXC(extends table As iOSMobileTable, value As Color)
		  
		  if ExtensionsXC.GetiOSVersionXC >= 13.0  then
		    
		    // Get the searchBar object
		    Declare Function searchBar Lib "UIKit" selector "searchBar" (obj As ptr) As ptr
		    Declare Function searchTextField Lib "UIKit" selector "searchTextField" (obj As ptr) As ptr
		    
		    Var searchPtr As ptr = table.SearchControllerHandle
		    Var searchBarObj As ptr = searchBar(searchPtr)
		    Var textFieldObj As ptr = searchTextField(searchBarObj)
		    
		    
		    Dim uic as ptr
		    if value.Alpha = 255 then
		      uic = ExtensionsXC.UIColor_Clear()
		    else
		      uic = ExtensionsXC.UIColorFromColor(value)
		      
		    end if
		    
		    
		    Declare Sub setTextColor_ Lib "UIKit.framework" selector "setTextColor:" (obj_id As ptr, col As ptr)
		    setTextColor_(textFieldObj, uic)
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSearchFiltersXC(extends table as iOSMobileTable, assigns value() as string)
		  // Convert the string array into an NSMutableArray
		  Declare Function NSClassFromString Lib "Foundation" (aString As CFStringRef) As Ptr
		  Declare Function arrayWithCapacity Lib "Foundation" selector "arrayWithCapacity:" (cls As ptr, count as UInteger) As ptr
		  Declare Sub addObject Lib "Foundation" selector "addObject:" (arr As ptr, obj As CFStringRef)
		  
		  Dim nsarray As ptr = arrayWithCapacity(NSClassFromString("NSMutableArray"), value.LastIndex+1)
		  
		  For i As Integer = 0 To value.LastIndex
		    addObject(nsarray, value(i))
		  Next
		  
		  // Put them on the searchbar
		  Declare Function searchBar Lib "UIKit" selector "searchBar" (obj As ptr) As ptr
		  Var searchPtr As ptr = table.SearchControllerHandle
		  
		  Var searchBarObj As ptr = searchBar(searchPtr)
		  
		  Declare Sub setScopeButtonTitles Lib "UIKit" selector "setScopeButtonTitles:" (obj As ptr, arr As ptr)
		  setScopeButtonTitles(searchBarObj, nsarray)
		  
		  // Enable it if the count > 0
		  Declare Sub setShowsScopeBar Lib "UIKit" selector "setShowsScopeBar:" (obj As ptr, value As Boolean)
		  setShowsScopeBar(searchBarObj, value.LastIndex>-1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSearchPlaceholderXC(extends table As iOSMobileTable, value As String)
		  
		  If ExtensionsXC.GetiOSVersionXC >= 13.0 then
		    
		    // Get the searchBar object
		    Declare Function searchBar Lib "UIKit" selector "searchBar" (obj As ptr) As ptr
		    
		    
		    Var searchPtr As ptr = table.SearchControllerHandle
		    Var searchBarObj As ptr = searchBar(searchPtr)
		    
		    
		    Declare sub setPlaceholder lib "UIKit" selector "setPlaceholder:" (obj as ptr, value as CFStringRef)
		    
		    setPlaceholder(searchBarObj, value)
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Enum, Name = SearchBarPlacement, Flags = &h0
		Automatic = 0
		  Integrated = 1
		  Stacked = 2
		  IntegratedCentered
		IntegratedButton
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
