# create bar graph in R
setwd("D:\rprogram6005")
getwd()
#vector for graph
H <- c(100,50,179,45,25,200,250,175,120)

#names.arg=names of bar
M <- c("Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov")

#---------------------Example-1 : Create barchart ---------------------------
# Give the chart file a name.
png(file = "barChart_revenue.png")

# Plot the bar chart - barplot()
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col=rainbow(9),main="Revenue chart",border="black")


# Save the file. this is very imp to write,
dev.off()

#---------------------Example-2 : Horizontal bar chart with density ---------------------------
# Give the chart file a name.
png(file = "barChart_revenue_horiz.png")


color=c("DarkRed","Purple","Green")
# Plot the bar chart.
#barplot()
barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col=color,main="Revenue chart",border="black",density=25,horiz=TRUE)

# Save the file. this is very imp to write,
dev.off()

