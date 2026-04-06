# How to create an Array in R ?

#syntax :
#array(data=vectors/list of vectors, 
          # dim=c(rows,cols,dims)
          # dimnames=c(rows_names,cols_names,dim_names)
          #) 


#Example-1
x <- array(1:20, c(2, 3, 2))
x
#here 2 by 3 matrix will be printed twice


#Example-2
vector1 =  c (5, 10, 15,20)
vector2 =  c (25, 30, 35, 40, 45, 50,55,60)
final = array (c (vector1, vector2),dim =c(4,4,3))
print (final)

#Example-3
data1 =  c (9,18,12)
data2 = c (27,36,40)
c.names = c ("Monday","Tuesday")
r.names = c ("Morning","afternoon","Evening")
m.names = c ("January","February")

final_array = array (c (data1,data2), dim=c (3,2,2), dimnames=list (r.names, c.names, m.names))
print(final_array)

#access element from 1st dimension 2nd ro and 3rd col
#print(final_array[2,1,1])

#To access multiple values at once, you need to specify the range you want.
final_array[1:2,1:2,1]
#try what is the output of 
final_array[ , ,1]
final_array[ , ,2]



#TRY THIS and write proper comment for that code

array_1 <- array(1:8, c(2, 2, 2))
# this is a 2 by 2 matrix
array_2 <- array(8:1, c(2, 2, 2))
# this is also a 2 by 2 matrix

#array addition
array_1 + array_2

#array multiplication
array_1 * array_2

#array multiplied with a specific number
array_1 * 5

#This will give sum of every element present in the array
sum(array_2)

#This will give mean of array
mean(array_1)

#This will give first,second and third quantile
quantile(array_2, c(0.25, 0.5, 0.75))

#This will give cumulative sum
cumsum(array_1)
