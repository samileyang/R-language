housing.df <- read.csv("WestRoxbury.csv",header = TRUE)
dim(housing.df)
head(housing.df)
View(housing.df)
housing.df[,1]
housing.df$TOTAL.VALUE
housing.df[1:10,1]
housing.df[1:10,]
housing.df[6,]
housing.df[4:5,1:10]
housing.df[5,c(1,2,4,8,9,10)]

length(housing.df[,1])
mean(housing.df[,1])
summary(housing.df)
class(housing.df[,1])
class(housing.df$BEDROOMS)


