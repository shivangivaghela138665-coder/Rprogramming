# Write a script in R to add 2 numbers

#convert user value in integer by as.ineger()
no1=as.integer(readline(prompt="Enter no1: "))
print(no1)

no2=as.integer(readline(prompt="Enter no2: "))
print(no2)

sum=no1+no2
print(sum)

#------------take user input
name=readline(prompt="Enter your name: ")
typeof(name)
age=readline(prompt="Enter your age: ")
typeof(age)


#-----print R version
R.version


# Write R script to perform arithmetic and logical 
operation.+ - * / ^ %%

vector1= c(5,6,7)
vector2=c(4,8,9)
# arithmetic operations
cat("Addition : ",vector1+vector2,"\n")
cat("Subtraction : ",vector2 - vector1,"\n")
cat("Mul : ",vector1 * vector2,"\n")
cat("Div : ",vector2 / vector1,"\n")
cat("Modulo : ",vector1 %% vector2,"\n")
cat("Power operator : ",vector1 ^ vector2,"\n")

#Logical operations 
# &  | && || !

vec1=c(FALSE,TRUE,FALSE)
vec2=c(TRUE,FALSE,TRUE)
cat("Element wise AND : ", vec1 & vec2 ,"\n")
cat("Element wise OR : ", vec1 | vec2 ,"\n")
cat("LOGICAL AND : ", vec1 && vec2 ,"\n")
cat("LOGICAL OR : ", vec1 || vec2 ,"\n")
cat("Negation/Complement : ",!vec1)

no1=25
no2=25
if(no1>no2)
{
  print("no1 is greater than no2")
}else if(no2>no1)
{
  print("no2 is greater than no1")
}else
{
  print("both are equal")
}

l=200
w=100
add=function(l=5,w=10)
{
  area=l*w
  print(area)
}

add(11)



