#!/bin/bash
# source "$(dirname "$0")/../utils/colors.sh"

generate_students_standalone() {
    local count=${1:-300}
    local output=${2:-"students_$(date +%Y%m%d_%H%M%S).csv"}
    echo -e "⏳ جاري توليد $count سجل طالب..."
    local names=("أحمد" "محمد" "علي" "عمر" "خالد" "سارة" "فاطمة" "نورا" "ليلى" "مريم")
    local subjects=("Math" "Science" "English" "History" "Geography" "Physics" "Chemistry")
    echo "Student_ID,Name,Subject,Score,Max_Score,Grade,Semester,Year,Class" > "$output"
    for i in $(seq 1 $count); do
        local name=${names[$((RANDOM % ${#names[@]}))]}
        local subject=${subjects[$((RANDOM % ${#subjects[@]}))]}
        local score=$((40 + RANDOM % 61))
        local semester=$((1 + RANDOM % 2))
        local year=$((2022 + RANDOM % 3))
        local class="Grade_$((9 + RANDOM % 4))"
        if [ $score -ge 90 ]; then grade="A"
        elif [ $score -ge 80 ]; then grade="B"
        elif [ $score -ge 70 ]; then grade="C"
        elif [ $score -ge 60 ]; then grade="D"
        else grade="F"; fi
        echo "$i,$name,$subject,$score,100,$grade,Semester_$semester,$year,$class" >> "$output"
    done
    echo "تم الإنشاء: $output"
}

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    generate_students_standalone "$@"
fi
