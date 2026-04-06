#Write a prrogram to create line chart for samsung.
setwd("D:/Shivangi6005")
library(readxl)

data <- read_excel("Mobile_Sales.xlsx")

png(file = "samsung_line.png")

# Filter only Samsung data
samsung_data <- subset(data, Company == "Samsung")
plot(samsung_data$Price,
     type = "o",
     col = "blue",
     main = "Samsung Price Trend",
     xlab = "Quantity",
     ylab = "Price")

dev.off()
