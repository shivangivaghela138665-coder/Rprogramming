#Descriptive Analysis
# Create a sample dataset
data <- c(12, 15, 20, 22, 25, 30, 35, 40, 45, 50)

# Basic descriptive statistics using summary()
# Provides min, 1st quartile, median, mean, 3rd quartile, and max
summary(data)

# Install and load the 'psych' package for more detailed descriptive stats
# Uncomment the next line if you don't have the package installed
 install.packages("psych")
library(psych)

# describe() gives detailed descriptive statistics:
# mean, standard deviation, median, trimmed mean, skewness, kurtosis, etc.
describe(data)

# Frequency table to see counts of each unique value
table(data)

# Histogram to visualize distribution of data
hist(data, main="Histogram of Data", xlab="Values", col="lightblue", breaks=5)

# Boxplot to visualize spread, median, and outliers
boxplot(data, main="Boxplot of Data", col="lightgreen")
