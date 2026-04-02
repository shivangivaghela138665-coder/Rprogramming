#Survival Analysis in R
# Survival Analysis is used to study the time until an event occurs
# Example: Time until patients relapse, or machines fail

# Load the survival package
# Uncomment the next line if you don’t have it installed
# install.packages("survival")
library(survival)

# Create sample dataset
# 'time' = duration until event or censoring
# 'status' = event indicator (1 = event occurred, 0 = censored)
time <- c(5, 8, 12, 20, 22, 30)
status <- c(1, 1, 0, 1, 0, 1)  # 1 = event occurred, 0 = censored

# Create a survival object
surv_obj <- Surv(time, status)

# Fit Kaplan-Meier survival curve
fit <- survfit(surv_obj ~ 1)

# Print summary of survival curve
summary(fit)

# Plot Kaplan-Meier survival curve
plot(fit,
     main = "Kaplan-Meier Survival Curve",
     xlab = "Time",
     ylab = "Survival Probability",
     col = "blue",
     lwd = 2)

# Example with a grouping variable (e.g., treatment groups)
group <- c("Treatment", "Treatment", "Control", "Control", "Treatment", "Control")
fit_group <- survfit(Surv(time, status) ~ group)

# Plot survival curves by group
plot(fit_group,
     col = c("red", "green"),
     lwd = 2,
     main = "Survival Curves by Group",
     xlab = "Time",
     ylab = "Survival Probability")
legend("bottomleft", legend = c("Control", "Treatment"),
       col = c("green", "red"), lwd = 2)
