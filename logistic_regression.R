#Regression in R
#Logistic Regression
# Logistic regression is used when the dependent variable is categorical (binary outcome).
# Example: Predicting success (1) or failure (0) based on predictor values.

# Create sample dataset
df_log <- data.frame(
  outcome = c(0,1,0,1,1,0,1,0,1,1),   # Binary dependent variable
  predictor = c(2,3,4,5,6,7,8,9,10,11) # Independent variable
)

# Fit logistic regression model
log_model <- glm(outcome ~ predictor, data = df_log, family = binomial)

# Show summary of the model
summary(log_model)

# Predict probabilities
pred_probs <- predict(log_model, type = "response")

# Display predicted probabilities
pred_probs
