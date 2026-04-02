#Creating line chart in R
v<-c(10,12,28,33,45)

#set path 
getwd()
setwd('D:/rprogram6005')

# Give the chart file a name.
  png(file = "line_chart.png")
  
# Plot the line chart.
  plot(v,
       type="S",
       col="blue",xlab="Month",ylab="Rain fall",main="Rain fall chart")
# Save the file.
  dev.off()
       

#Multi lines chart
# Create the data for the chart.

v <- c(7,15,30,21,18,52)
t <- c(4,40,7,16,31,38)
x<- c(11,27,8,22,41,33)
# Give the chart file a name.
jpeg(file = "multiLines.jpg")

#The lines( ) function adds information to a graph. It can not produce a graph on its own.
#Usually it follows a plot(x, y) command that produces a graph.

# Plot the bar chart.
# Plot the bar chart Title , Color & Lables. 
plot(v,type="l",col="blueviolet",xlab="Month",ylab="Rain fall",main="Rain fall chart")

lines(t, type="o", col="red")
lines(x,type="o",col="green")
# Save the file.
dev.off()
  

