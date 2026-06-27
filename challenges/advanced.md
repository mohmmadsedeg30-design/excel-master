# 🎯 تحديات المستوى: متقدم

## التحدي 11: لوحة تحكم تفاعلية
**المطلوب:**
1. اعمل Dashboard يحتوي على:
   - رسم بياني للمبيعات الشهرية
   - KPI cards (إجمالي، متوسط، أعلى)
   - Slicer للتصفية حسب المنطقة

**الخطوات:**
1. أنشئ Pivot Tables للبيانات المطلوبة
2. Insert → PivotChart لكل رسم
3. Insert → Slicer للتصفية
4. اربط كل الرسوم بـ Slicer واحد
5. صمم التخطيط بشكل احترافي

## التحدي 12: VBA Macro للتقارير
**المطلوب:**
1. ماكرو يولد تقرير تلقائي يومياً
2. يجمع البيانات من عدة أوراق
3. يرسل النتيجة بالبريد

**الكود:**
```vba
Sub DailyReport()
    Dim ws As Worksheet
    Dim reportWs As Worksheet
    
    Set reportWs = Worksheets.Add
    reportWs.Name = "Daily Report " & Format(Date, "yyyy-mm-dd")
    
    For Each ws In Worksheets
        If ws.Name <> reportWs.Name Then
            ws.Range("A1:D100").Copy
            reportWs.Cells(reportWs.Rows.Count, 1).End(xlUp).Offset(1, 0).PasteSpecial
        End If
    Next ws
    
    reportWs.Range("A1").AutoFilter
    reportWs.Columns.AutoFit
    ActiveWorkbook.Save
    
    MsgBox "تم إنشاء التقرير بنجاح!"
End Sub
```

## التحدي 13: Power Query ETL
**المطلوب:**
1. استورد بيانات من 3 ملفات CSV
2. نظف البيانات (إزالة فراغات، توحيد التنسيق)
3. ادمجها في جدول واحد
4. حدث تلقائياً

**الخطوات:**
1. Data → Get Data → From File → From Folder
2. اختر مجلد CSV
3. Transform Data:
   - Trim لكل الأعمدة النصية
   - Change Type للتواريخ
   - Remove Duplicates
4. Merge Queries حسب المفتاح
5. Close & Load to Data Model
6. Properties → Refresh every 30 minutes

## التحدي 14: تحليل الانحدار
**البيانات:** sales.csv
**المطلوب:**
احسب معادلة الانحدار: Revenue = a + b×Quantity + c×Discount
استخدم Analysis ToolPak

**الخطوات:**
1. Data → Analysis ToolPak → Regression
2. Input Y Range: Revenue
3. Input X Range: Quantity, Discount
4. Output: New Worksheet

## التحدي 15: محاكاة مونت كارلو
**المطلوب:**
قدّر احتمالية خسارة المشروع
استخدم توزيع طبيعي للمتغيرات
شغل 10,000 محاكاة

**الكود VBA:**
```vba
Sub MonteCarlo()
    Dim i As Long
    Dim revenue As Double
    Dim cost As Double
    Dim profit As Double
    Dim lossCount As Long
    
    Randomize
    
    For i = 1 To 10000
        revenue = Application.WorksheetFunction.NormInv(Rnd, 100000, 20000)
        cost = Application.WorksheetFunction.NormInv(Rnd, 80000, 15000)
        profit = revenue - cost
        
        If profit < 0 Then lossCount = lossCount + 1
    Next i
    
    MsgBox "احتمالية الخسارة: " & (lossCount / 10000) * 100 & "%"
End Sub
```
