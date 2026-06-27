# 📊 الجداول المحورية (Pivot Tables)

## إنشاء Pivot Table
1. حدد نطاق البيانات
2. Insert → PivotTable
3. اختر الموقع (ورقة جديدة أو موجودة)
4. اسحب الحقول للمناطق

## مناطق Pivot Table

| المنطقة | الوظيفة | مثال |
|---------|---------|------|
| **Filters** | تصفية البيانات | سنة معينة |
| **Columns** | الأعمدة | الأشهر |
| **Rows** | الصفوف | المنتجات |
| **Values** | القيم | Sum, Average, Count |

## أنواع التجميع
```excel
Sum          ← المجموع
Average      ← المتوسط
Count        ← العدد
Max/Min      ← الأقصى/الأدنى
Product      ← الضرب
StdDev       ← الانحراف المعياري
Var          ← التباين
```

## Pivot Table محسّن (Calculated Fields)
PivotTable Analyze → Fields, Items & Sets → Calculated Field
مثال: `= Revenue * 0.15` ← حساب العمولة 15%

## الجداول المحورية المتقدمة
### Timeline
Insert → Timeline → اختر حقل التاريخ
تصفية بسحب شريط زمني.

### Slicer
Insert → Slicer → اختر الحقل
أزرار تصفية تفاعلية.

### Pivot Chart
Insert → PivotChart لكل رسم.
