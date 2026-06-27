#!/bin/bash
# 🚀 Excel Master v2.0 - Main Script
# Author: Excel Master Project

# Import tools
source "$(dirname "$0")/utils/colors.sh"
source "$(dirname "$0")/math-logic/linear-regression.sh"
source "$(dirname "$0")/math-logic/distributions.sh"

show_menu() {
    clear
    echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC} ${BOLD}🚀 EXCEL MASTER v2.0 - LINUX TERMINAL EDITION${NC}                           ${CYAN}║${NC}"
    echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}1)${NC} Learn Excel Basics"
    echo -e "${YELLOW}2)${NC} Generate Training Data (CSV)"
    echo -e "${YELLOW}3)${NC} Mathematical and Statistical Logic"
    echo -e "${YELLOW}4)${NC} Challenges Mode"
    echo -e "${YELLOW}5)${NC} View Lessons and Documentation"
    echo -e "${YELLOW}6)${NC} Exit"
    echo ""
    echo -ne "${BOLD}Select an option: ${NC}"
}

main() {
    while true; do
        show_menu
        read choice
        case $choice in
            1) echo "Displaying basics..."; sleep 2 ;;
            2) echo "Opening generators list..."; sleep 2 ;;
            3) show_regression_help; show_distributions; echo -ne "\nPress Enter to return..."; read ;;
            4) echo "Displaying challenges..."; sleep 2 ;;
            5) echo "Displaying documentation..."; sleep 2 ;;
            6) print_success "Thank you for using Excel Master!"; exit 0 ;;
            *) print_error "Invalid option!" ; sleep 1 ;;
        esac
    done
}

main
