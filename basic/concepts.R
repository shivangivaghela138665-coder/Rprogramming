#factor variables
# Factors are used for categorical data
colors <- factor(c("Red", "Blue", "Red", "Green", "Blue"))

# Levels of the factor
levels(colors)

# Frequency of each category
table(colors)



#Sampling and Random numbers
# Random sample from a vector
sample(1:100, 10)   # 10 random numbers between 1 and 100

# Random numbers from uniform distribution
runif(5, min = 0, max = 1)

# Random numbers from normal distribution
rnorm(5, mean = 50, sd = 10)
