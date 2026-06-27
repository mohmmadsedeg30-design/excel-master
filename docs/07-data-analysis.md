# 🔬 Advanced Data Analysis

## Power Query (Get & Transform)
Data → Get Data → From File/From Database/From Web

### Common Transformation Steps

| Transformation | Function |
|---------|---------|
| Remove Duplicates | Remove duplicates |
| Split Column | Split a column |
| Merge Queries | Merge tables |
| Pivot/Unpivot | Rotate data |
| Group By | Aggregate |
| Add Conditional Column | Conditional column |

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
Calculate the required value to achieve a goal.

### Data Table
Data → What-If Analysis → Data Table
Sensitivity table for two variables.

### Scenario Manager
Data → What-If Analysis → Scenario Manager
Compare different scenarios.

## Solver
Data → Solver
Optimization (Maximize/Minimize) with constraints.

## Analysis ToolPak
File → Options → Add-ins → Analysis ToolPak

### Available Tools
| Tool | Function |
|--------|---------|
| Anova | Analysis of Variance |
| Correlation | Correlation Matrix |
| Regression | Linear Regression |
| t-Test | Difference Test |
| F-Test | Variance Test |
| Histogram | Frequency Distribution |
| Random Number Generation | Generate random numbers |
| Sampling | Sampling |
