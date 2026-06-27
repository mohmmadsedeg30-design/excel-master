# 🎯 Level: Intermediate Challenges

## Challenge 6: Statistical Analysis
**Data:** students.csv
**Requirements:**
1. Calculate the Mean, Median, and Standard Deviation.
2. Use functions: AVERAGE, MEDIAN, STDEV.S.

**Answer:**
```excel
=AVERAGE(D:D)
=MEDIAN(D:D)
=STDEV.S(D:D)
```

## Challenge 7: Correlation Coefficient
**Data:** sales.csv
**Requirements:**
Is there a relationship between discount and satisfaction?
Use CORREL.

**Answer:**
```excel
=CORREL(J:J, L:L)
```
**Interpretation:**
- 1.0 = Perfect positive relationship
- -1.0 = Perfect negative relationship
- 0 = No relationship

## Challenge 8: Sales Forecasting
**Data:** sales.csv
**Requirements:**
Predict future sales based on the trend.
Use FORECAST.LINEAR.

**Answer:**
```excel
=FORECAST.LINEAR(13, known_y, known_x)
```

## Challenge 9: Multiple Conditional Aggregation
**Data:** employees.csv
**Requirements:**
Average salary of Seniors in the IT department.
Use AVERAGEIFS.

**Answer:**
```excel
=AVERAGEIFS(E:E, C:C, "IT", D:D, "Senior")
```

## Challenge 10: Data Merging
**Data:** employees.csv + departments.csv
**Requirements:**
Add the manager's name for each employee.
Use XLOOKUP or INDEX+MATCH.

**Answer:**
```excel
=XLOOKUP(C2, departments!A:A, departments!C:C, "Not Found")
```
