a <- c(10,20,30,40)
b<- c("book","pan","textbook","pencil_Case")
c<- c(TRUE, FALSE,TRUE, FALSE)
d<- c(2,9,8,10.7)
df <- data.frame(a,b,c,d)
names(df) <- c("ID","item","store","price")
df
str(df)
df[1,2]
df[1:2,]
df[,1]
df[1:2,3:4]
df[,c("ID","store")]
df$ID

quantity <- c(10,35,40,5)
df$quantity <- quantity
df


housing.df <- read.csv("WestRoxbury.csv",header = TRUE)
sample(1:20,10,replace = TRUE)
set.seed(10)
sample(1:20,10,replace = TRUE)

x <- c(1,5,3,1,2,9)
y <- c(7,6,9,5,5,5,3)
setdiff(x,y)

x <- c(1:20)
y <- x*2
y

f <- lm(x~y)
f

summary(f)
new.data <- data.frame(y<-c(10:15))
pred <- predict(f,newdata = new.data)
pred
