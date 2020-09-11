Sub ClearFilters()
'
' ClearFilters Macro
'
    Sheets("Shipment").Select
'

   if Sheets("Shipment").FilterMode = True then	
   Selection.AutoFilter
   End if
	
   
End Sub