#Write a program in R to give discount of
#50% if bill amount is >25000,
#30% if bill amount is 15000,
#20% if bill amount is 10000,
#10% if bill amount is 8000 and 
#No discount if bill amount is<8000

amt=readline(prompt="Enter bill amount:")
print(amt)
if(amt>25000)
{
  print("Congratulations!You get 50% discount.")
}else if(amt<=25000 && amt>15000)
{
  print("You get 30% discount.")
}else if(amt<=15000 && amt>10000)
{
  print("You get 20% discount.")
}else if(amt<=10000 && amt>=8000)
{
  print("You get 10% discount.")
}else
{
  print("Sorry!You won't get discount.")
}