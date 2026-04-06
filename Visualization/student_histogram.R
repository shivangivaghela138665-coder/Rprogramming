# R script to create Histogram for a sample data
getwd()
setwd('D:/rprogram6005')
# Sample Data: Student Exam Scores
scores <- c(55, 62, 65, 71, 74, 82, 85, 88, 92, 98)

# Modified Histogram
hist(scores,
     breaks = 5,                # Control number of bins
     col = "lightblue",         # Bar color
     border = "black",          # Bar border color
     main = "Distribution of Exam Scores",
     xlab = "Scores",
     ylab = "Number of Students",
     xlim = c(50, 100))         # Set x-axis range

# Add a rug plot for exact values
rug(scores, col = "red")

dev.off()

#What’s new:
# breaks = 5 → divides the scores into 5 bins for clearer grouping.

#border = "black" → adds a neat outline to each bar.

#xlim = c(50, 100) → fixes the x-axis range to cover the score spread.

#rug(scores) → adds small red ticks at the bottom to show exact score positions.
