#line chart
getwd()
setwd('D:\rprogram6005')

# Sample Data: 10-Hour Temperature Log
hour <- 1:10
temperature <- c(18, 19, 20, 22, 23, 24, 26, 25, 23, 21)

# Basic Line Graph
plot(hour, temperature,
     type = "o",                 # "o" = points + lines
     col = "blue",               # Line color
     main = "10-Hour Temperature Log",
     xlab = "Hour",
     ylab = "Temperature (°C)",
     ylim = c(15, 30))           # Set y-axis range for clarity

# Add grid lines for better readability
grid()

dev.off()

#Explanation:
#plot() → creates the line graph.

#type = "o" → shows both points and connecting lines.

#col = "blue" → makes the line blue.

#ylim = c(15, 30) → fixes the y-axis range to keep the chart neat.

#grid() → overlays light grid lines for easier interpretation.