# Create a, b, c, d variables
a <- c(10,20,30,40)
b <- c("book","pen","textbook","pencil_case")
c <- c(TRUE,FALSE,TRUE,FALSE)
d <- c(2.5,8,10,7)
# Join the variables to create a data frame
df <- data.frame(a,b,c,d)
df

# Name the data frame
names(df) <- c("ID","items","store","price")
df

# Print the structure
str(df)

# Select row 1 in column 2
df[1,2]
# Select rows 1 to 2
df[1:2,]
# Select column 1
df[,1]
# Select rows 1 to 3 and columns 3 to 4
df[1:3,3:4]
# Slice with columns name for two columns: ID and store
df[,c("ID","store")]
# Select the column ID using $ sign
df$ID

# Create a new vector
quantity <- c(10,35,40,5)
# Add "quantity" to the "df" data frame
df$quantity <- quantity
df

quantity <- c(10,35,40)
df$quantity <- quantity

# basic sample function in R with replacement
sample(1:20,10,replace=TRUE)
# sample function in R with no replacement
sample(1:20,10,replace=FALSE)
# sample function with set.seed() gives the same output
set.seed(10)
sample(1:20,10,replace=TRUE)

# Example vector 1
x<-c(1,5,3,1,2,9)
# Example vector 2
y<-c(7,6,8,9,5,5,5,3)
#Apply setdiff()function
setdiff(x,y)
# Let's create two vectors, then fit a linear model
x <- c(1:20)
y <- x*2
y
f <- lm(x~y)
f
# We can use summary() to see the details
summary(f)
# Apply the model f to new data
new.data<-data.frame(y=c(10:15))
# Predict the values of x with new data
pred<- predict(f,newdata=new.data)
pred




