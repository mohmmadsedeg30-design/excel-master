# 💻 أساسيات برمجة VBA

## محرر الأكواد (VBE)
`Alt + F11` لفتح المحرر.

## المتغيرات
```vba
Dim name As String      ' نص
Dim age As Integer      ' عدد صحيح
Dim salary As Double    ' عدد عشري
Dim isActive As Boolean ' صح/خطأ
Dim hireDate As Date    ' تاريخ
```

## الحلقات
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

## الشروط
```vba
If salary > 10000 Then
    bonus = salary * 0.1
ElseIf salary > 5000 Then
    bonus = salary * 0.05
Else
    bonus = 0
End If
```

## التعامل مع الأوراق
```vba
' إضافة ورقة
Worksheets.Add

' تسمية ورقة
ActiveSheet.Name = "المبيعات"

' نسخ ورقة
Worksheets("Sheet1").Copy After:=Worksheets("Sheet2")

' حذف ورقة
Worksheets("Temp").Delete
```

## تسجيل Macro
Developer → Record Macro → قم بالإجراءات → Stop Recording

## تشغيل Macro
`Alt + F8` → اختر الماكرو → Run
