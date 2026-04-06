#Write a program to create multi line chart to sales of samsung, one plus, and apple (compare sales of all three companies).

setwd("D:/Shivangi6005")

install.packages("readxl")
install.packages("dplyr")

# Load libraries
library(readxl)
library(dplyr)

# Read Excel file
data <- read_excel("Mobile_Sales.xlsx")
png(file = "multi_line.png")

# Calculate total quantity (sales) for each company
total_data <- data %>%
  group_by(Company) %>%
  summarise(Total_Qty = sum(Qty))
print(total_data)

samsung  <- data %>% filter(Company == "Samsung")
apple    <- data %>% filter(Company == "Apple")
oneplus  <- data %>% filter(Company == "OnePlus")

# Create x-axis (observation number)
x1 <- 1:nrow(samsung)
x2 <- 1:nrow(apple)
x3 <- 1:nrow(oneplus)

# Find common y-axis range
y_range <- range(c(samsung$Qty, apple$Qty, oneplus$Qty))

# Plot first line (Samsung)
plot(x1, samsung$Qty,
     type = "o",
     col = "blue",
     ylim = y_range,
     xlab = "Observation",
     ylab = "Sales (Qty)",
     main = "Sales Comparison of Samsung, Apple, OnePlus")

# Add other lines
lines(x2, apple$Qty, type = "o", col = "red")
lines(x3, oneplus$Qty, type = "o", col = "green")

# Add legend
legend("topright",
       legend = c("Samsung", "Apple", "OnePlus"),
       col = c("blue", "red", "green"),
       lty = 1,
       pch = 1)

dev.off()
