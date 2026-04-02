#how to read excel


getwd()
setwd("D:/rprogram6005")
#because  R can not read \ slash in path


install.packages("readxl")
#you need internet to run this command , you need to install only once

library(readxl) 
#run this command everytime you run the code

#function name
result_emp= read_excel("emp.xlsx")
print(result_emp)


#-------------------ANALYSIS ON DATA----------------------
print('---------max salary -----------')


max_salary= subset(result_emp , salary==max(salary))
print(max_salary)


print('----------min salary------------')
min_salary=subset(result_emp , salary == min(salary))
print(min_salary)

#print the employees whose department is IT
print('---------- employees whose department is IT------------')
dept=subset(result_emp,dept=="IT")
print(dept)

print('---------- employees whose department is IT and salary>6000------------')
emp=subset(result_emp, dept=="IT" & salary>=6000)
print(emp)

print('---------- Fetch the record of employees whose sal is between 6000 to 7000------------')

sal_range=subset(result_emp, salary > 6000 & salary <7000)
print(sal_range)

print('---------- Fetch the record of employees who are not belongs to Operations ------------')

result=subset(result_emp, dept != "Operations")
print(result)


print('---------- Fetch the record of employees who are not belongs to Operations and having sal between 700 to 800 ------------')

result=subset(result_emp, dept != "Operations" & salary>7000 & salary <8000)
print(result)


