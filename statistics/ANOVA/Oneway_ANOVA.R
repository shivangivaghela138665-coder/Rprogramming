#ANOVA in R
#One way ANOVA
# One-Way ANOVA compares means across multiple groups
# Example: Test if three groups have different average scores

# Create sample data
group <- factor(rep(c("A", "B", "C"), each = 5))   # 3 groups, each with 5 values
values <- c(5,6,7,8,9,   # Group A
            6,7,8,9,10,  # Group B
            7,8,9,10,11) # Group C

# Perform One-Way ANOVA
anova_oneway <- aov(values ~ group)

# Show results
summary(anova_oneway)

# Visualize group means with a boxplot
boxplot(values ~ group,
        main = "One-Way ANOVA Example",
        xlab = "Groups",
        ylab = "Values",
        col = c("lightblue", "lightgreen", "lightpink"))
