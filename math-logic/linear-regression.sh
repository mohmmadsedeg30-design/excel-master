#!/bin/bash
# ╔═══════════════════════════════════════════════════════════════════════════════╗
# ║                    📈 Linear Regression and Prediction                        ║
# ╚═══════════════════════════════════════════════════════════════════════════════╝

linear_regression() {
    local file=$1
    local x_col=$2
    local y_col=$3
    awk -F',' -v x="$x_col" -v y="$y_col" 'NR>1 {
        sum_x += $x; sum_y += $y;
        sum_xy += $x * $y;
        sum_x2 += $x * $x;
        sum_y2 += $y * $y;
        n++;
    }
    END {
        if (n > 0) {
            mean_x = sum_x / n;
            mean_y = sum_y / n;
            numerator = sum_xy - (n * mean_x * mean_y);
            denominator = sum_x2 - (n * mean_x * mean_x);
            if (denominator != 0) {
                slope = numerator / denominator;
                intercept = mean_y - (slope * mean_x);
                ss_tot = sum_y2 - (n * mean_y * mean_y);
                ss_res = sum_y2 - (intercept * sum_y) - (slope * sum_xy);
                if (ss_tot != 0) {
                    r_squared = 1 - (ss_res / ss_tot);
                } else {
                    r_squared = 1;
                }
                print "Slope (m):", slope;
                print "Intercept (b):", intercept;
                print "Equation: y = " slope "x + " intercept;
                print "R-squared:", r_squared;
                print "Correlation:", (r_squared > 0 ? sqrt(r_squared) : -sqrt(-r_squared));
            }
        }
    }' "$file"
}

predict() {
    local slope=$1
    local intercept=$2
    local x=$3
    awk "BEGIN {print ($slope * $x) + $intercept}"
}

multiple_regression() {
    local file=$1
    local x1_col=$2
    local x2_col=$3
    local y_col=$4
    awk -F',' -v x1="$x1_col" -v x2="$x2_col" -v y="$y_col" 'NR>1 {
        sum_x1 += $x1; sum_x2 += $x2; sum_y += $y;
        sum_x1y += $x1 * $y; sum_x2y += $x2 * $y;
        sum_x1x2 += $x1 * $x2;
        sum_x1_2 += $x1 * $x1; sum_x2_2 += $x2 * $x2;
        n++;
    }
    END {
        det = (sum_x1_2 * sum_x2_2) - (sum_x1x2 * sum_x1x2);
        if (det != 0) {
            b1 = ((sum_x1y * sum_x2_2) - (sum_x1x2 * sum_x2y)) / det;
            b2 = ((sum_x1_2 * sum_x2y) - (sum_x1y * sum_x1x2)) / det;
            b0 = (sum_y - (b1 * sum_x1) - (b2 * sum_x2)) / n;
            print "b0 (intercept):", b0;
            print "b1 (x1 coef):", b1;
            print "b2 (x2 coef):", b2;
            print "Equation: y = " b0 " + " b1 "*x1 + " b2 "*x2";
        }
    }' "$file"
}

show_regression_help() {
    echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${NC} ${BOLD}📈 Linear Regression${NC}"
    echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}Simple Linear Regression:${NC}"
    echo -e "  y = mx + b"
    echo -e "  • m = Σ[(xi-x̄)(yi-ȳ)] / Σ(xi-x̄)²"
    echo -e "  • b = ȳ - m×x̄"
    echo ""
    echo -e "${YELLOW}Coefficient of Determination (R²):${NC}"
    echo -e "  Measures relationship strength (0 to 1)"
    echo -e "  1.0 = Perfect prediction"
    echo ""
    echo -e "${YELLOW}Usage:${NC}"
    echo -e "  linear_regression(file.csv 5 8)  ← x=col5, y=col8"
    echo -e "  predict 2.5 10 20  ← y = 2.5×20 + 10"
    echo ""
}
