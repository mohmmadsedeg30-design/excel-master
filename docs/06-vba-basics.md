# 💻 VBA Programming Basics

## Visual Basic Editor (VBE)
`Alt + F11` to open the editor.

## Variables
```vba
Dim name As String      ' Text
Dim age As Integer      ' Integer
Dim salary As Double    ' Decimal
Dim isActive As Boolean ' True/False
Dim hireDate As Date    ' Date
```

## Loops
```vba
' For Loop
For i = 1 To 10
    Cells(i, 1).Value = i
Next i

' For Each
For Each cell In Range("A1:A10")
    cell.Value = cell.Value * 2
Next cell

' Do While
Do While i <= 10
    i = i + 1
Loop
```

## Conditions
```vba
If salary > 10000 Then
    bonus = salary * 0.1
ElseIf salary > 5000 Then
    bonus = salary * 0.05
Else
    bonus = 0
End If
```

## Working with Sheets
```vba
' Add a sheet
Worksheets.Add

' Rename a sheet
ActiveSheet.Name = "Sales"

' Copy a sheet
Worksheets("Sheet1").Copy After:=Worksheets("Sheet2")

' Delete a sheet
Worksheets("Temp").Delete
```

## Recording a Macro
Developer → Record Macro → Perform actions → Stop Recording

## Running a Macro
`Alt + F8` → Select macro → Run
