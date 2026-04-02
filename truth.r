x<-c("what","is","Truth")
if("Truth" %in% x)
{
  print("Word is found")
}else
{
  print("Word is not found")
}

#---------
x<-c("What","is","truth")
if("Truth" %in% x)
{
  print("Truth is found the first time")
}else if("abc" %in% x)
{
  print("truth is found the second time")
}else
{
  print("No truth found")
}