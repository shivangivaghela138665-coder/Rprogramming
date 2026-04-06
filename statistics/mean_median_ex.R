# R script for mean,median,mode,standard deviation
## Create a sample dataset
data <- c(12, 15, 20, 22, 25, 30, 35)

# Mean: average of all values
mean_val <- mean(data)

# Median: middle value when data is sorted
median_val <- median(data)

# Mode: most frequently occurring value
# R does not have a built-in mode function, so we define one
mode_func <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
mode_val <- mode_func(data)

# Variance: measure of spread (average squared deviation from mean)
var_val <- var(data)

# Standard Deviation: square root of variance
sd_val <- sd(data)

# Print results
mean_val
median_val
mode_val
var_val
sd_val
