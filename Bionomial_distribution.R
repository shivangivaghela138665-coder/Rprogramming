#Bionomial distribution in R
# Binomial distribution models the number of successes in a fixed number of trials
# Example: Tossing a coin 10 times, probability of success (heads) = 0.5

# Generate 100 random samples from a binomial distribution
# size = number of trials per experiment
# prob = probability of success in each trial
binom_data <- rbinom(100, size = 10, prob = 0.5)

# View first few values
head(binom_data)

# Plot histogram to visualize distribution
hist(binom_data,
     main = "Histogram of Binomial Distribution",
     xlab = "Number of Successes",
     col = "lightgreen",
     breaks = 10)

# Probability Mass Function (PMF) for Binomial distribution
# dbinom(x, size, prob) gives probability of exactly x successes
x_vals <- 0:10
pmf_vals <- dbinom(x_vals, size = 10, prob = 0.5)

# Plot PMF
plot(x_vals, pmf_vals, type = "h", lwd = 2,
     main = "Binomial Distribution PMF",
     xlab = "Number of Successes",
     ylab = "Probability",
     col = "blue")

# Cumulative Distribution Function (CDF)
# pbinom(x, size, prob) gives probability of <= x successes
cdf_vals <- pbinom(x_vals, size = 10, prob = 0.5)

# Plot CDF
plot(x_vals, cdf_vals, type = "s", lwd = 2,
     main = "Binomial Distribution CDF",
     xlab = "Number of Successes",
     ylab = "Cumulative Probability",
     col = "red")
