#Pie chart creation
getwd()
setwd("D:\rprogram6005")

#script to plot the graph
# Sample Data: Monthly Budget Allocation
amounts <- c(1200, 150, 400, 80, 200, 120, 100, 300, 50, 40)
categories <- c("Rent", "Utilities", "Groceries", "Internet",
                "Transport", "Insurance", "Dining Out", "Savings",
                "Gym", "Subscriptions")

# Calculate percentages for each category
percentages <- round(amounts / sum(amounts) * 100, 1)

# Create labels with category names and percentages
labels <- paste(categories, "-", percentages, "%")

# Pie Chart with percentages
pie(amounts,
    labels = labels,                          # Show category + percentage
    col = rainbow(length(categories)),        # Different color for each slice
    main = "Monthly Budget Allocation")       # Chart title
dev.off()

#percentages <- round(amounts / sum(amounts) * 100, 1) → calculates each category’s share of the total budget, rounded to 1 decimal place.

#labels <- paste(categories, "-", percentages, "%") → combines category names with their percentage values for display.

#pie() → now shows slices with both names and percentages.
