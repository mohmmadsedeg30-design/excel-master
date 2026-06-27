# 🔍 Advanced Functions

## Lookup Functions

### VLOOKUP (Vertical Lookup)
```excel
=VLOOKUP("Ahmed", A2:D100, 3, FALSE)
```
- Value: "Ahmed"
- Range: A2:D100
- Column Index: 3
- FALSE: Exact match

### INDEX + MATCH (Better than VLOOKUP)
```excel
=INDEX(D:D, MATCH("Ahmed", A:A, 0))
```
More flexible and faster.

### XLOOKUP (Excel 365)
```excel
=XLOOKUP("Ahmed", A:A, D:D, "Not Found")
```

## Conditional Aggregation Functions
```excel
=SUMIF(A:A, "IT", B:B)           ← Sum IT department salaries
=SUMIFS(B:B, A:A, "IT", C:C, ">5000")  ← Multiple conditions
=COUNTIF(A:A, "Pass")             ← Count passing students
=COUNTIFS(A:A, "IT", B:B, ">5000")
=AVERAGEIF(A:A, "IT", B:B)        ← Average IT salaries
=MAXIFS(B:B, A:A, "IT")           ← Max salary in IT
=MINIFS(B:B, A:A, "IT")           ← Min salary in IT
```

## Array Formulas
```excel
{=SUM(A1:A10 * B1:B10)}          ← Sum of products
=SUMPRODUCT(A1:A10, B1:B10)      ← Same result without Ctrl+Shift+Enter
```

## Financial Functions
```excel
=PV(0.05/12, 360, -1000)         ← Present Value
=FV(0.05/12, 360, -1000)         ← Future Value
=PMT(0.05/12, 360, 200000)       ← Monthly Payment
=NPV(0.1, A1:A5) + A0            ← Net Present Value
=IRR(A0:A5)                      ← Internal Rate of Return
```

## Statistical Functions
```excel
=STDEV.S(A1:A100)                ← Standard Deviation (Sample)
=STDEV.P(A1:A100)                ← Standard Deviation (Population)
=VAR.S(A1:A100)                  ← Variance
=CORREL(A1:A100, B1:B100)        ← Correlation Coefficient
=FORECAST.LINEAR(x, known_y, known_x)  ← Prediction
=TREND(known_y, known_x, new_x)  ← Trendline
```
