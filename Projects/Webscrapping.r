# how to download webdata in R
getwd()
setwd("C:/Users/Lenovo/OneDrive/Documents/R/webData")

# Read the URL.

#url <- "https://www.google.com/"
url<-"https://www.marwadiuniversity.ac.in/"

download.file(url,destfile = "mydownloadedpage.html")
