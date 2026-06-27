# 🎯 Level: Beginner Challenges

## Challenge 1: Salary Table
**Data:** employees.csv
**Requirements:**
1. Calculate the average salary using AVERAGE.
2. Calculate the maximum and minimum salary using MAX and MIN.
3. Use COUNTIF to count employees in each department.

**Answer:**
```excel
=AVERAGE(E:E)
=MAX(E:E)
=MIN(E:E)
=COUNTIF(C:C, "IT")
```

## Challenge 2: Performance Evaluation
**Data:** employees.csv
**Requirements:**
Classify employees: Excellent (>90), Good (70-90), Poor (<70).
Use nested IF.

**Answer:**
```excel
=IF(H2>90, "Excellent", IF(H2>=70, "Good", "Poor"))
```

## Challenge 3: Quick Lookup
**Data:** employees.csv
**Requirements:**
Search for an employee's salary by their name.
Use VLOOKUP.

**Answer:**
```excel
=VLOOKUP("Ahmed", A:E, 5, FALSE)
```

## Challenge 4: Conditional Formatting
**Data:** inventory.csv
**Requirements:**
Color cells where stock is less than the minimum in red.
Color cells where stock is optimal in green.

**Steps:**
Home → Conditional Formatting → Highlight Cells Rules → Less Than

## Challenge 5: First Pivot Table
**Data:** sales.csv
**Requirements:**
Create a Pivot Table for total revenue by product.
Filter by region.

**Steps:**
Insert → PivotTable → Rows: Product → Values: Sum of Revenue → Filters: Region
