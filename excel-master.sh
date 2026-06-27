#!/bin/bash
# 🚀 Excel Master v2.0 - Main Script
# Author: Excel Master Project

# استيراد الأدوات
source "$(dirname "$0")/utils/colors.sh"
source "$(dirname "$0")/math-logic/linear-regression.sh"
source "$(dirname "$0")/math-logic/distributions.sh"

show_menu() {
    clear
    echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC} ${BOLD}🚀 EXCEL MASTER v2.0 - LINUX TERMINAL EDITION${NC}                           ${CYAN}║${NC}"
    echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}1)${NC} تعلم أساسيات Excel"
    echo -e "${YELLOW}2)${NC} توليد بيانات تدريبية (CSV)"
    echo -e "${YELLOW}3)${NC} المنطق الرياضي والإحصائي"
    echo -e "${YELLOW}4)${NC} وضع التحديات (Challenges)"
    echo -e "${YELLOW}5)${NC} قراءة الدروس والوثائق"
    echo -e "${YELLOW}6)${NC} الخروج"
    echo ""
    echo -ne "${BOLD}اختر رقماً: ${NC}"
}

main() {
    while true; do
        show_menu
        read choice
        case $choice in
            1) echo "جاري عرض الأساسيات..."; sleep 2 ;;
            2) echo "جاري فتح قائمة المولدات..."; sleep 2 ;;
            3) show_regression_help; show_distributions; echo -ne "\nاضغط Enter للعودة..."; read ;;
            4) echo "جاري عرض التحديات..."; sleep 2 ;;
            5) echo "جاري عرض الوثائق..."; sleep 2 ;;
            6) print_success "شكراً لاستخدامك Excel Master!"; exit 0 ;;
            *) print_error "خيار غير صحيح!" ; sleep 1 ;;
        esac
    done
}

main
