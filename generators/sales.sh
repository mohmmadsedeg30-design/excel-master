#!/bin/bash
# source "$(dirname "$0")/../utils/colors.sh"

generate_sales_standalone() {
    local count=${1:-200}
    local output=${2:-"sales_$(date +%Y%m%d_%H%M%S).csv"}
    echo -e "⏳ جاري توليد $count عملية بيع..."
    local products=("Laptop" "Mouse" "Keyboard" "Monitor" "Headset" "Webcam" "USB Drive" "SSD" "RAM" "CPU")
    local regions=("Cairo" "Alexandria" "Giza" "Mansoura" "Tanta" "Aswan" "Luxor")
    echo "Order_ID,Date,Product,Quantity,Unit_Price,Total,Region,Sales_Rep" > "$output"
    for i in $(seq 1 $count); do
        local product=${products[$((RANDOM % ${#products[@]}))]}
        local region=${regions[$((RANDOM % ${#regions[@]}))]}
        local qty=$((1 + RANDOM % 20))
        local price=$((100 + RANDOM % 15000))
        local total=$((qty * price))
        local month=$((1 + RANDOM % 12))
        local day=$((1 + RANDOM % 28))
        local date=$(printf "2024-%02d-%02d" $month $day)
        local rep="Rep_$((1 + RANDOM % 10))"
        echo "$i,$date,$product,$qty,$price,$total,$region,$rep" >> "$output"
    done
    echo "تم الإنشاء: $output"
}

if [ "${BASH_SOURCE[0]}" == "${0}" ]; then
    generate_sales_standalone "$@"
fi
