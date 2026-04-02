#Regression in R
#-----------Linear Regression-----------------
# Linear regression models the relationship between a dependent variable (y)
# and one independent variable (x).

# Create sample data
x <- 1:10
y <- 2*x + rnorm(10, mean = 0, sd = 1)  # y = 2x + noise

# Fit linear regression model
lin_model <- lm(y ~ x)

# Show summary of the model (coefficients, R-squared, etc.)
summary(lin_model)

# Plot data points
plot(x, y,
     main = "Linear Regression Example",
     xlab = "X values",
     ylab = "Y values",
     pch = 19, col = "blue")

# Add regression line
abline(lin_model, col = "red", lwd = 2)
