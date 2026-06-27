#!/bin/bash
# ╔═══════════════════════════════════════════════════════════════════════════════╗
# ║                    📊 التوزيعات الإحصائية المستخدمة                            ║
# ╚═══════════════════════════════════════════════════════════════════════════════╝

box_muller() {
    local mean=${1:-0}
    local std=${2:-1}
    awk "BEGIN {
        srand();
        u1 = rand();
        u2 = rand();
        while (u1 <= 0.0001) u1 = rand();
        z0 = sqrt(-2 * log(u1)) * cos(2 * 3.14159265359 * u2);
        result = $mean + ($std * z0);
        print int(result);
    }"
}

log_normal() {
    local meanlog=${1:-0}
    local sdlog=${2:-1}
    awk "BEGIN {
        srand();
        u1 = rand();
        u2 = rand();
        while (u1 <= 0.0001) u1 = rand();
        z = sqrt(-2 * log(u1)) * cos(2 * 3.14159265359 * u2);
        result = exp($meanlog + ($sdlog * z));
        print int(result);
    }"
}

beta_distribution() {
    local alpha=${1:-2}
    local beta=${2:-5}
    awk "BEGIN {
        srand();
        x = rand();
        for (i = 1; i < $alpha; i++) x *= rand();
        for (i = 1; i < $beta; i++) x *= rand();
        print x;
    }"
}

gamma_distribution() {
    local shape=${1:-2}
    local scale=${2:-1}
    awk "BEGIN {
        srand();
        result = 0;
        for (i = 0; i < $shape; i++) {
            u = rand();
            while (u <= 0.0001) u = rand();
            result += -log(u);
        }
        print int(result * $scale);
    }"
}

weibull_distribution() {
    local shape=${1:-1.5}
    local scale=${2:-1}
    awk "BEGIN {
        srand();
        u = rand();
        while (u <= 0.0001) u = rand();
        result = $scale * pow(-log(u), 1/$shape);
        print int(result);
    }"
}

show_distributions() {
    echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC} ${BOLD}📊 التوزيعات الإحصائية في المشروع${NC}"
    echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}1. Normal (Box-Muller):${NC}"
    echo -e "   الاستخدام: الرواتب، الدرجات، الأداء"
    echo -e "   ${GREEN}مثال:${NC} $(box_muller 70 15) (μ=70, σ=15)"
    echo ""
    echo -e "${YELLOW}2. Log-Normal:${NC}"
    echo -e "   الاستخدام: الثروة، الدخل، الأسعار"
    echo -e "   ${GREEN}مثال:${NC} $(log_normal 8 1.5)"
    echo ""
    echo -e "${YELLOW}3. Exponential:${NC}"
    echo -e "   الاستخدام: أوقات الانتظار، عمر المنتجات"
    echo ""
    echo -e "${YELLOW}4. Poisson:${NC}"
    echo -e "   الاستخدام: عدد الأحداث في فترة"
    echo ""
    echo -e "${YELLOW}5. Binomial:${NC}"
    echo -e "   الاستخدام: نجاح/فشل، نسبة القبول"
    echo ""
    echo -e "${YELLOW}6. Weibull:${NC}"
    echo -e "   الاستخدام: عمر المنتجات، الأعطال"
    echo ""
}
