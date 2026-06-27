#!/bin/bash
# source "$(dirname "$0")/../utils/colors.sh"

generate_finance_standalone() {
    local count=${1:-200}
    local output=${2:-"finance_$(date +%Y%m%d_%H%M%S).csv"}
    echo -e "⏳ جاري توليد $count معاملة مالية..."
    local income_cats=("Salary" "Freelance" "Investment" "Rental" "Bonus")
    local expense_cats=("Rent" "Utilities" "Food" "Transport" "Entertainment" "Healthcare" "Education" "Shopping" "Savings")
    echo "Transaction_ID,Date,Description,Category,Type,Amount,Balance,Payment_Method" > "$output"
    local balance=50000
    for i in $(seq 1 $count); do
        local is_income=$((RANDOM % 3))
        local type
        local category
        local amount=$((100 + RANDOM % 10000))
        if [ "$is_income" -eq 0 ]; then
            type="Income"
            category=${income_cats[$((RANDOM % ${#income_cats[@]}))]}
            balance=$((balance + amount))
        else
            type="Expense"
            category=${expense_cats[$((RANDOM % ${#expense_cats[@]}))]}
            balance=$((balance - amount))
        fi
        local day=$((1 + RANDOM % 28))
        local month=$((1 + RANDOM % 12))
        local date=$(printf "2024-%02d-%02d" $month $day)
        local method=$(shuf -n1 -e "Cash" "Card" "Bank Transfer" "Mobile Wallet")
        local desc="$category Transaction"
        echo "$i,$date,$desc,$category,$type,$amount,$balance,$method" >> "$output"
    done
    echo "تم الإنشاء: $output"
}

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    generate_finance_standalone "$@"
fi
