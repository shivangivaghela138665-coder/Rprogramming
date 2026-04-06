getwd()
setwd("C:/Users/student/Documents/Kp6011")
#because  R can not read \ slah in path


install.packages("readxl") #you need internet to run this command , you need to install only once

library(readxl)

mobile = read_excel("Mobile_Sales.xlsx")
print(mobile)

#Print mobile names whose qty is between 10 to 15
result=subset(mobile, Qty>10 & Qty<15, select='Company')
print(result)

#Print mobile name whose ram => 8 and price =<80000
result=subset(mobile, Ram > 8 & Price<80000)
print(result)

#Print model name whose price>95000 and processor is B.
result=subset(mobile, Price > 95000 & Processor=="B")
print(result)

#Print mobile name which has ram==16 and qty<10
result=subset(mobile, Ram==16 & Qty < 10)
print(result)

#Print OnePlus mobile whose Price>40000 & Color =="Silver" & Ram>12
result=subset(mobile, Price>40000 & Color=="Silver" & Ram >12)
print(result)
