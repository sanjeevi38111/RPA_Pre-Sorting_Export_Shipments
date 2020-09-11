Sub Week()

Application.EnableEvents = False

LrowSt = Worksheets("Export Admin").Cells(Rows.Count, "Q").End(xlUp).Row

LrowEd = Worksheets("Export Admin").Cells(Rows.Count, "A").End(xlUp).Row


For Strt = LrowSt + 1 To LrowEd

Worksheets("Export Admin").Range("R" & Strt).Value = Now

dtw = WorksheetFunction.WeekNum(Now, vbMonday)


Worksheets("Export Admin").Range("Q" & Strt) = "CW" & dtw & Year(Date)


Next


Application.EnableEvents = True


End Sub