#ANOVA in R
#Two WAy ANOVA
# Two-Way ANOVA compares means across two factors simultaneously
# Example: Effect of two factors (Factor1 and Factor2) on values

# Create sample data
factor1 <- factor(rep(c("Low", "High"), each = 6))   # Factor 1 with 2 levels
factor2 <- factor(rep(c("A", "B", "C"), times = 4))  # Factor 2 with 3 levels
values2 <- c(5,6,7,8,9,10,   # Low-A,B,C
             6,7,8,9,10,11)  # High-A,B,C

# Perform Two-Way ANOVA
anova_twoway <- aov(values2 ~ factor1 * factor2)

# Show results
summary(anova_twoway)

# Interaction plot to visualize effects
interaction.plot(factor2, factor1, values2,
                 main = "Two-Way ANOVA Interaction Plot",
                 xlab = "Factor 2",
                 ylab = "Mean Values",
                 col = c("red", "blue"),
                 lwd = 2)
