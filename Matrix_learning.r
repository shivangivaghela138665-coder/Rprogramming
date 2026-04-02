#Write R script to create a 4 × 4 matrix , 3 × 3 matrix with labels 
#and fill the matrix by rows and 2 × 2 matrix with labels and fill the 
#matrix by columns.

temp=c(22,25,33,24,32,42,39,22,36,34,40,39,22,32,42,36)
M1=matrix(temp,nrow=4,ncol=4,byrow = TRUE,dimnames=list(c("City1","City2","City3","City4"),c("6AM","12PM","6PM","12AM")))
M1

sales=c(22,45,67,34,54,73,24,67,87)
M2=matrix(sales,nrow = 3,ncol=3,byrow = TRUE,dimnames = list(c("Product1","Product2","Product3"),c(2020,2021,2022)))
M2

age=c(12,13,11,10)
M3=matrix(age,nrow = 2,ncol=2,byrow = FALSE,dimnames = list(c("LKG","HKG"),c("Sub1","Sub2")))
M3
