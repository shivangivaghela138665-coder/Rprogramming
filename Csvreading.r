#-----------read csv in R programming-----------
#check current working directory
getwd()

#set directory to provide path to read the file
setwd("D:/rprogram6005")

# read csv file
data=read.csv("mycsvfile.csv")
print(data)

# there is no package to read csv,but read.csv function is use for the same purpose

#fetch the record of max salary
max_sal=subset(data,salary==max(salary))
print(max_sal)

#fetch the record of employees whose sal is greater then 600
good_sal=subset(data, salary>700)
print(good_sal)

# print the record which dept is IT
ITDept= subset(data,dept=="IT")
print(ITDept)

# print sal>700 and Dept=IT
res=subset(data,salary>500 & dept=="IT")
print(res)











