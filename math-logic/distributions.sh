#!/bin/bash
# ╔═══════════════════════════════════════════════════════════════════════════════╗
# ║                    📊 Statistical Distributions                               ║
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
    echo -e "${CYAN}║${NC} ${BOLD}📊 Statistical Distributions in the Project${NC}"
    echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}1. Normal (Box-Muller):${NC}"
    echo -e "   Usage: Salaries, Grades, Performance"
    echo -e "   ${GREEN}Example:${NC} $(box_muller 70 15) (μ=70, σ=15)"
    echo ""
    echo -e "${YELLOW}2. Log-Normal:${NC}"
    echo -e "   Usage: Wealth, Income, Prices"
    echo -e "   ${GREEN}Example:${NC} $(log_normal 8 1.5)"
    echo ""
    echo -e "${YELLOW}3. Exponential:${NC}"
    echo -e "   Usage: Waiting times, Product lifespan"
    echo ""
    echo -e "${YELLOW}4. Poisson:${NC}"
    echo -e "   Usage: Number of events in a period"
    echo ""
    echo -e "${YELLOW}5. Binomial:${NC}"
    echo -e "   Usage: Success/Failure, Acceptance rate"
    echo ""
    echo -e "${YELLOW}6. Weibull:${NC}"
    echo -e "   Usage: Product lifespan, Failures"
    echo ""
}
