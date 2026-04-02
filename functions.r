#Write R script for some inbuilt functions like : 
#help(),c(),ls(),rm(),sqrt(),seq(),min(),max(),assign(),print().

#---some functions of R programming----
help(sqrt)
c(15,24,33)
c(10,"DAR",10.15)
results= c(75,77,78,79,81)
results 

ls()
#list the variables 
rm(number)
#rm remove var

sqrt(16)
 
rollno=seq(from=10,to=15)
rollno
min(80.4,80.8,80.3,80.9)
max(80.4,80.8,80.3,80.9)

#----------variable assignment
name="Marwadi University"
print(name)

name<-"Marwadi University"
print(name)

"Marwadi University"->name
print(name)

name<<-"Marwadi University"
print(name)

"Marwadi University"->>name
print(name)

#assign("variableName","Value of var")
assign("nm","MU") #nm="MU"
print(nm)

#--------Math functions --------
  
min(2,7,5,9)
max(22,45,89,123,32)
floor(15.7)
ceiling(15.7)
 
 #---------------
#how to know working directory
getwd()
setwd("d:/foldername/nestedfoldername")  


  
  
  

