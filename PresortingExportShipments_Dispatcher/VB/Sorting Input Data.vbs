Sub ColumnFill()

'Copy Formula from cell Q1
  
    Worksheets("Shipment").Range("Q1").Select
    Selection.Copy
    Worksheets("Shipment").Range("Q3").Select
    Worksheets("Shipment").Paste

' Get the row count
  LR = Worksheets("Shipment").Cells(Rows.Count, 1).End(xlUp).Row

'Apply formula to All Rows

  Worksheets("Shipment").Range("Q3").Select
  Worksheets("Shipment").Range("Q3").AutoFill Destination:=Range("Q3:Q" & LR), Type:=xlFillDefault
  Range("Q3:Q" & LR).Select

   With ActiveSheet.Range("A2:Q" & LR)
.AutoFilter Field:=4, Criteria1:="<>Olympus DEMO"
.AutoFilter Field:=17, Criteria1:="#N/A"




End With


  
End Sub