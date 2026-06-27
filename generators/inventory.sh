#!/bin/bash
# source "$(dirname "$0")/../utils/colors.sh"

generate_inventory_standalone() {
    local count=${1:-150}
    local output=${2:-"inventory_$(date +%Y%m%d_%H%M%S).csv"}
    echo -e "⏳ جاري توليد $count صنف..."
    local items=("Paper A4" "Pen Blue" "Pen Black" "Stapler" "Tape" "Folder" "Envelope" "Toner HP" "Toner Canon" "Notebook" "Calculator" "Scissors" "Glue")
    local suppliers=("OfficeMax" "Staples" "Amazon" "Local Supplier" "Noor Stationery")
    echo "Item_ID,Item_Name,Current_Stock,Min_Stock,Unit_Price,Supplier,Status" > "$output"
    for i in $(seq 1 $count); do
        local item=${items[$((RANDOM % ${#items[@]}))]}
        local supplier=${suppliers[$((RANDOM % ${#suppliers[@]}))]}
        local stock=$((0 + RANDOM % 500))
        local min=$((20 + RANDOM % 80))
        local price=$(echo "scale=2; 5 + $RANDOM % 5000 / 100" | bc -l 2>/dev/null || echo "$((5 + RANDOM % 50)).$((RANDOM % 99))")
        if [ $stock -eq 0 ]; then status="OUT OF STOCK"
        elif [ $stock -lt $min ]; then status="LOW STOCK"
        else status="OK"; fi
        echo "$i,$item,$stock,$min,$price,$supplier,$status" >> "$output"
    done
    echo "تم الإنشاء: $output"
}

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    generate_inventory_standalone "$@"
fi
