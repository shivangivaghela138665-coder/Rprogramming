#Write a script in R to create dataframe of your favorite movie.

movie_id=c(1,2,3,4,5,6,7,8,9,10)
movie_name=c("Dilwale","Singham","Gold","Hichki","Shershaah","Sky Force","Uri","Yodha","3 Idiots","Chhichore")
actor=c("SRK","Ajay Devgan","Akshay Kumar","-","Siddharth Malhotra","Veer Pahariya","Vicky Kaushal","Siddharth Malhotra","Amir Khan","Sushant Singh Rajput")
actress=c("Kajol","Kajal","Mouni Roy","Rani Mukerji","Kiara Advani","Sara Ali Khan","Yami Gautam","Raashil Khanna","Karina Kapoor","Shraddha Kapoor")
year=c(2015,2011,2018,2018,2021,2025,2019,2023,2009,2019)
revenue=c(372,400,158,209,160,150,340,54,400,215)
rating=c(3,4.2,4,3.5,3,3.5,3.4,3,4.5,3.5)

movie_df=data.frame(movie_id,movie_name,actor,actress,year,revenue,rating)
print(movie_df)

#accessing top 3 most revenue generated movies
top3=movie_df[order(-movie_df$revenue),][1:3,]
print(top3)

#accessing top 3 most revenue generated movies
movie_df[c(1,2,9),c(6)]

#accessing all movie names with all actors
movie_df[,c(2,3)]

#accessing movie names with specific actor
movie_df[c(2),c(2,3)]

#accessing all movie names with all actors
movie_df[,c(2,4)]

#accessing movie of year 2025
movie_df[c(6),c(2,5)]

#accessing movie with 5 star rating
movie_df[c(9),c(2,7)]