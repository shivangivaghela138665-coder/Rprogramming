#Multi-line chart

getwd()
setwd('D:\rprogram6005')

# Sample Data: Daily Step Count Comparison
day <- 1:10
personA <- c(4000, 5500, 3000, 8000, 7200, 6100, 10500, 4500, 5000, 9000)
personB <- c(6500, 7000, 5000, 7500, 8200, 6000, 9000, 5500, 6200, 8800)

# Basic Multi-line Graph
plot(day, personA,
     type = "o",                 # "o" = points + lines
     col = "blue",               # Line color for Person A
     ylim = c(2000, 11000),      # Set y-axis range
     xlab = "Day",
     ylab = "Steps",
     main = "Daily Step Count Comparison")

# Add Person B’s line to the same plot
lines(day, personB,
      type = "o",
      col = "red")               # Line color for Person B

# Add legend to distinguish the two lines
legend("topleft",
       legend = c("Person A", "Person B"),
       col = c("blue", "red"),
       lty = 1, pch = 1)
dev.off()

#Explanation:
#plot() → draws the first line (Person A).

#lines() → overlays Person B’s line on the same graph.

#ylim = c(2000, 11000) → ensures both datasets fit neatly on the y-axis.

#legend() → adds a legend in the top-left corner to identify each line.
