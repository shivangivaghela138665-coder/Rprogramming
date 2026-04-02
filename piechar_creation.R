#set path
getwd()
setwd('D:/rprogram6005')
dir.create('images')

# Create data for the graph.

x <- c(21,42,30,40,33,47,69)
labels <- c("London", "Sydney", "Singapore", "South Africa","France","Germany","India")

#Give chart name
jpeg(file='images/pieChart_Country.jpeg')

pie(x, labels, main="Country pie chart",col=rainbow(length(x)))

legend("topleft", labels , cex=0.8,fill=rainbow(length(x)))
# Save the file.
dev.off()


###==>>Slice Percentages and Chart Legend

# Create data for the graph.
x <- c(20, 64, 17 ,43)
labels <- c("London","Sydney","Singapore","India")

# Give the chart file a name.
png(file = "country_legends.jpg")

# Give the chart file a name.
#png(file = "country.jpg")


my_col=c("blue3","cyan","gold1","mediumpurple")


# Plot the chart.
pie(x, labels=labels, main="Country pie chart",col=my_col))

#for legend
legend("topright", labels , cex=0.8,fill=rainbow(length(x)))

# Save the file.
dev.off()
