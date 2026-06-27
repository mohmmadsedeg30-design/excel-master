# ➗ Basic Formulas and Functions

## Logical Formulas
```excel
=IF(A1>50, "Pass", "Fail")
=IF(A1>=90, "A", IF(A1>=80, "B", IF(A1>=70, "C", "F")))
=AND(A1>0, A1<100)     ← All conditions true
=OR(A1="Yes", A1="OK")  ← Any condition true
=NOT(A1="Error")        ← Inverse condition
=IFERROR(formula, "Calculation Error")
```

## Text Formulas
```excel
=CONCAT(A1, " ", B1)   ← Merge text
=LEFT(A1, 3)           ← 3 characters from left
=RIGHT(A1, 3)          ← 3 characters from right
=MID(A1, 2, 4)         ← 4 characters from position 2
=LEN(A1)               ← Character count
=UPPER(A1)             ← Uppercase
=LOWER(A1)             ← Lowercase
=TRIM(A1)              ← Remove extra spaces
```

## Date Formulas
```excel
=TODAY()               ← Today's date
=NOW()                 ← Date and time
=YEAR(A1)              ← Extract year
=MONTH(A1)             ← Extract month
=DAY(A1)               ← Extract day
=DATEDIF(A1, B1, "Y")  ← Difference in years
=EDATE(A1, 6)          ← Add 6 months
=EOMONTH(A1, 0)        ← Last day of the month
```
