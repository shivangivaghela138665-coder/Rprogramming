# read json file into R

# check package(optional)
any(grep("jsonlite",installed.packages()))

#install package for json file
install.packages("jsonlite")
library("jsonlite")

datajson <- fromJSON(file.choose())
#file.choose() wil give option to choose file 
print(datajson)

#check in which format it is reading json file, use class() for that
class(datajson)
