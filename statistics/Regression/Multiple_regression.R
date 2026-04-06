#Regression in R
#Multiplke Regression
# Multiple regression models the relationship between a dependent variable (y)
# and two or more independent variables (x1, x2, ...).

# Create sample dataset
df <- data.frame(
  y = c(10, 12, 15, 20, 25),
  x1 = c(1, 2, 3, 4, 5),
  x2 = c(2, 4, 6, 8, 10)
)

# Fit multiple regression model
multi_model <- lm(y ~ x1 + x2, data = df)

# Show summary of the model
summary(multi_model)
