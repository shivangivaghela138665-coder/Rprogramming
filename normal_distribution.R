#Normal Destribution in R
# Generate random data from a normal distribution
# rnorm() generates random numbers with a specified mean and standard deviation
# Here we generate 1000 values with mean = 50 and sd = 10
data_norm <- rnorm(1000, mean = 50, sd = 10)

# View the first few values
head(data_norm)

# Plot a histogram to visualize the distribution
hist(data_norm,
     main = "Histogram of Normal Distribution",
     xlab = "Values",
     col = "lightblue",
     breaks = 30)

# Add a density curve to the histogram
lines(density(data_norm), col = "red", lwd = 2)

# Plot the theoretical normal curve for comparison
x_vals <- seq(min(data_norm), max(data_norm), length = 100)
y_vals <- dnorm(x_vals, mean = 50, sd = 10)
lines(x_vals, y_vals * length(data_norm) * diff(hist(data_norm, plot=FALSE)$breaks)[1],
      col = "darkgreen", lwd = 2)

# QQ plot to check normality
qqnorm(data_norm)
qqline(data_norm, col = "red")
