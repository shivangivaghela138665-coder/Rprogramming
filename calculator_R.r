#Program-3 :Write a program to use R as a calculator.

#Here we have taken 2 variables no1 and no2 on which we perform +,-,*%,//
# and power of 5 and some math functions like exp log

#we are taking user input
no1=readline("Enter No 1 : ")
no2=readline("Enter No 2 : ")

#by default or return type of readline is character, 
#so we have to convert it into numbers for arithmetic operations

#check daya type of nno1 and no2
typeof(no1)
typeof(no2)

#type conversion, as.integer() will convert character to integer
no1=as.integer(no1)
no2=as.integer(no2)

#typeof(no1)
#typeof(no2)

add=no1+no2
print(add)
sub=no1-no2
print(sub)
mult=no1*no2
print(mult)
div=no1/no2
print(div)
modulo=no1%%no2
print(modulo)
power=5^2
print(power)
exp(1.5)
log(10)
log10(5)
