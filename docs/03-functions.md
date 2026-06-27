# 🔍 الدوال المتقدمة

## دوال البحث

### VLOOKUP (البحث العمودي)
```excel
=VLOOKUP("أحمد", A2:D100, 3, FALSE)
```
- القيمة: "أحمد"
- النطاق: A2:D100
- رقم العمود: 3
- FALSE: تطابق تام

### INDEX + MATCH (أفضل من VLOOKUP)
```excel
=INDEX(D:D, MATCH("أحمد", A:A, 0))
```
أكثر مرونة وأسرع.

### XLOOKUP (Excel 365)
```excel
=XLOOKUP("أحمد", A:A, D:D, "غير موجود")
```

## دوال التجميع الشرطي
```excel
=SUMIF(A:A, "IT", B:B)           ← جمع رواتب قسم IT
=SUMIFS(B:B, A:A, "IT", C:C, ">5000")  ← شروط متعددة
=COUNTIF(A:A, "ناجح")             ← عدد الناجحين
=COUNTIFS(A:A, "IT", B:B, ">5000")
=AVERAGEIF(A:A, "IT", B:B)        ← متوسط رواتب IT
=MAXIFS(B:B, A:A, "IT")           ← أعلى راتب في IT
=MINIFS(B:B, A:A, "IT")           ← أقل راتب في IT
```

## دوال المصفوفات (Array Formulas)
```excel
{=SUM(A1:A10 * B1:B10)}          ← جمع حاصل الضرب
=SUMPRODUCT(A1:A10, B1:B10)      ← نفس النتيجة بدون Ctrl+Shift+Enter
```

## دوال مالية
```excel
=PV(0.05/12, 360, -1000)         ← القيمة الحالية
=FV(0.05/12, 360, -1000)         ← القيمة المستقبلية
=PMT(0.05/12, 360, 200000)       ← القسط الشهري
=NPV(0.1, A1:A5) + A0            ← القيمة الحالية الصافية
=IRR(A0:A5)                      ← معدل العائد الداخلي
```

## دوال إحصائية
```excel
=STDEV.S(A1:A100)                ← الانحراف المعياري (عينة)
=STDEV.P(A1:A100)                ← الانحراف المعياري (مجتمع)
=VAR.S(A1:A100)                  ← التباين
=CORREL(A1:A100, B1:B100)        ← معامل الارتباط
=FORECAST.LINEAR(x, known_y, known_x)  ← التنبؤ
=TREND(known_y, known_x, new_x)  ← خط الاتجاه
```
