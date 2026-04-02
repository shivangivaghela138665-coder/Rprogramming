#Bar plot creation practice
getwd()
setwd('D:/rprogram6005')
# Sample Data: Top 10 Pizza Toppings
# Sample Data
votes <- c(45, 38, 22, 30, 25, 18, 15, 14, 12, 9)
toppings <- c("Cheese", "Pepperoni", "Mushroom", "Sausage",
              "Bacon", "Onion", "Peppers", "Ham",
              "Pineapple", "Spinach")

# Basic Bar Chart
barplot(votes,
        names.arg = toppings,
        col = "skyblue",
        main = "Top 10 Pizza Toppings",
        xlab = "Topping",
        ylab = "Votes",
        las = 2)   # Rotate labels for readability

dev.off()
#Key points:
#barplot() is the simplest way to make a bar chart in R.

#names.arg assigns category names to each bar.

#las = 2 rotates the x-axis labels so they don’t overlap.

#col adds a bit of color.
