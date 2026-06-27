#!/bin/bash
# source "$(dirname "$0")/../utils/colors.sh"

generate_employees_standalone() {
    local count=${1:-100}
    local output=${2:-"employees_$(date +%Y%m%d_%H%M%S).csv"}
    echo -e "⏳ جاري توليد $count موظف..."
    local names=("أحمد محمد" "سارة علي" "محمد عبدالله" "فاطمة أحمد" "خالد سعيد" "نورا حسن" "عمر خالد" "ليلى محمود" "ياسر إبراهيم" "هند مصطفى")
    local depts=("IT" "HR" "Finance" "Marketing" "Sales" "Operations")
    local positions=("Junior" "Senior" "Manager" "Director" "Specialist")
    echo "ID,Name,Department,Position,Salary,Join_Date,Performance_Rating,Email" > "$output"
    for i in $(seq 1 $count); do
        local name=${names[$((RANDOM % ${#names[@]}))]}
        local dept=${depts[$((RANDOM % ${#depts[@]}))]}
        local pos=${positions[$((RANDOM % ${#positions[@]}))]}
        local salary=$((3000 + RANDOM % 15000))
        local rating=$((50 + RANDOM % 51))
        local year=$((2018 + RANDOM % 7))
        local month=$((1 + RANDOM % 12))
        local day=$((1 + RANDOM % 28))
        local join_date=$(printf "%04d-%02d-%02d" $year $month $day)
        local email=$(echo "$name" | tr ' ' '.' | tr '[:upper:]' '[:lower:]')"@company.com"
        echo "$i,$name,$dept,$pos,$salary,$join_date,$rating,$email" >> "$output"
    done
    echo "تم الإنشاء: $output"
}

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    generate_employees_standalone "$@"
fi
