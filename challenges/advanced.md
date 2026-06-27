# 🎯 Level: Advanced Challenges

## Challenge 11: Interactive Dashboard
**Requirements:**
1. Create a Dashboard containing:
   - Monthly sales chart.
   - KPI cards (Total, Average, Max).
   - Slicer to filter by region.

**Steps:**
1. Create Pivot Tables for the required data.
2. Insert → PivotChart for each chart.
3. Insert → Slicer for filtering.
4. Connect all charts to a single Slicer.
5. Design the layout professionally.

## Challenge 12: VBA Macro for Reports
**Requirements:**
1. A macro that generates an automatic daily report.
2. Collects data from multiple sheets.
3. Sends the result by email.

**Code:**
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
    
    MsgBox "Report created successfully!"
End Sub
```

## Challenge 13: Power Query ETL
**Requirements:**
1. Import data from 3 CSV files.
2. Clean the data (remove spaces, unify format).
3. Merge them into a single table.
4. Refresh automatically.

**Steps:**
1. Data → Get Data → From File → From Folder.
2. Select CSV folder.
3. Transform Data:
   - Trim for all text columns.
   - Change Type for dates.
   - Remove Duplicates.
4. Merge Queries by key.
5. Close & Load to Data Model.
6. Properties → Refresh every 30 minutes.

## Challenge 14: Regression Analysis
**Data:** sales.csv
**Requirements:**
Calculate the regression equation: Revenue = a + b×Quantity + c×Discount.
Use Analysis ToolPak.

**Steps:**
1. Data → Analysis ToolPak → Regression.
2. Input Y Range: Revenue.
3. Input X Range: Quantity, Discount.
4. Output: New Worksheet.

## Challenge 15: Monte Carlo Simulation
**Requirements:**
Estimate project loss probability.
Use normal distribution for variables.
Run 10,000 simulations.

**VBA Code:**
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
    
    MsgBox "Loss Probability: " & (lossCount / 10000) * 100 & "%"
End Sub
```
