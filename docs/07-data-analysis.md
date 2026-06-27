# 🔬 تحليل البيانات المتقدم

## Power Query (Get & Transform)
Data → Get Data → From File/From Database/From Web

### خطوات التحويل الشائعة

| التحويل | الوظيفة |
|---------|---------|
| Remove Duplicates | إزالة التكرارات |
| Split Column | تقسيم عمود |
| Merge Queries | دمج جداول |
| Pivot/Unpivot | تدوير البيانات |
| Group By | تجميع |
| Add Conditional Column | عمود شرطي |

## Power Pivot
Power Pivot → Manage → Add to Data Model

### DAX (Data Analysis Expressions)
```dax
Total Sales = SUM(Sales[Amount])
Average Price = AVERAGE(Products[Price])
YTD Sales = TOTALYTD(SUM(Sales[Amount]), Sales[Date])
```

## What-If Analysis
### Goal Seek
Data → What-If Analysis → Goal Seek
احسب القيمة المطلوبة لتحقيق هدف.

### Data Table
Data → What-If Analysis → Data Table
جدول حساسية لمتغيرين.

### Scenario Manager
Data → What-If Analysis → Scenario Manager
مقارنة سيناريوهات مختلفة.

## Solver
Data → Solver
الأمثلية (Maximize/Minimize) مع قيود.

## Analysis ToolPak
File → Options → Add-ins → Analysis ToolPak

### الأدوات المتاحة
| الأداة | الوظيفة |
|--------|---------|
| Anova | تحليل التباين |
| Correlation | مصفوفة الارتباط |
| Regression | الانحدار الخطي |
| t-Test | اختبار الفرق |
| F-Test | اختبار التباين |
| Histogram | التوزيع التكراري |
| Random Number Generation | توليد أرقام عشوائية |
| Sampling | العينات |
