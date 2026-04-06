#Box plot in R
# Boxplots are used to visualize the distribution of data,
# showing the median, quartiles, and potential outliers.
getwd()
setwd(':D/rprogramms6005')
# Create sample data
data <- c(7, 8, 5, 6, 9, 10, 12, 15, 18, 20, 25)

# Basic boxplot
boxplot(data,
        main = "Boxplot Example",     # Title of the plot
        xlab = "Dataset",             # Label for X-axis
        ylab = "Values",              # Label for Y-axis
        col = "lightblue")            # Box color

# Add horizontal line at the mean for reference
abline(h = mean(data), col = "red", lwd = 2, lty = 2)

# Example with multiple groups
group1 <- c(5, 6, 7, 8, 9)
group2 <- c(10, 12, 14, 16, 18)
group3 <- c(20, 22, 24, 26, 28)

# Combine into a list
group_data

dev.off()
