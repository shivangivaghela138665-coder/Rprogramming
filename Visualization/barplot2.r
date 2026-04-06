# create a program to create bar chart to represent total mobile price of samsung, apple, one plus.
setwd("D:/Shivangi6005")
getwd()

install.packages("readxl")
library(readxl)
install.packages("dplyr")
library(dplyr)

data <- read_excel("Mobile_Sales.xlsx")
print(data)
#---------------------Example-1 : Create barchart ---------------------------
# Give the chart file a name.
png(file = "barChart_revenue.png")

total_data <- data %>%
  group_by(Company) %>%
  summarise(Total_Price = sum(Price))
print(total_data)

# Create bar chart
barplot(total_data$Total_Price,
        names.arg = total_data$Company,
        col = c("blue", "red", "green"),
        main = "Total Mobile Price by Brand",
        xlab = "Brand",
        ylab = "Total Price (INR)",
        border = "black")


# Save the file. this is very imp to write,
dev.off()

#---------------------Example-2 : Horizontal bar chart with density ---------------------------
# Give the chart file a name.
png(file = "barChart_revenue_horiz.png")

# Plot the bar chart.

total_data <- data %>%
  group_by(Company) %>%
  summarise(Total_Price = sum(Price))
print(total_data)
#barplot()
barplot(total_data$Total_Price,
        names.arg = total_data$Company,
        col = c("blue", "red", "green"),
        main = "Total Mobile Price by Brand",
        xlab = "Brand",
        ylab = "Total Price (INR)",
        border = "black",
        horiz=TRUE)

# Save the file. this is very imp to write,
dev.off()

