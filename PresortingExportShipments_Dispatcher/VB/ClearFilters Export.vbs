Function ClearFilters()
'
' ClearFilters Macro
'
    
    Sheets("Export Admin").Select
'
   LR = Worksheets("Export Admin").Cells(Rows.Count, 1).End(xlUp).Row
   

   If Sheets("Export Admin").FilterMode = True Then
    Sheets("Export Admin").Rows("1:1").Select
   Selection.AutoFilter
   End If
	


End Function