#-----------Scatter plot in R-------------------
# Scatter plots are used to visualize the relationship between two numeric variables.
getwd()
setwd('D:/rprogram6005')

# Create sample data
x <- c(5, 10, 15, 20, 25, 30, 35)
y <- c(7, 14, 18, 21, 27, 33, 36)

# Basic scatter plot
plot(x, y,
     main = "Scatter Plot Example",   # Title of the plot
     xlab = "X Values",               # Label for X-axis
     ylab = "Y Values",               # Label for Y-axis
     pch = 19,                        # Plotting character (19 = solid circle)
     col = "blue")                    # Color of points

# Add a regression line to show trend
model <- lm(y ~ x)                    # Fit linear regression model
abline(model, col = "red", lwd = 2)   # Add regression line in red

# Add grid lines for better readability
grid()
 dev.off()
