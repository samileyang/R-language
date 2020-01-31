getwd()

setwd("C:/Users/16437/Desktop/2020spring/app analytics & pred modeling/r files")

#choose working directory in session

x<-42

x

y<-42

y

x-y

class(x)

y<-"R is fantastic"
class(y)

fname <- "Joe";lname <- "Smith"
paste(fname,lname)

29%%6
29%/%6

"cat"<"cattle"

c(2,3,4)

matrix_a <- matrix(1:10,byrow = FALSE, ncol = 2)
matrix_b <- cbind(matrix_a,matrix(1:5,ncol = 1))
matrix_b

matrix_c <- rbind(matrix_b,matrix(1:3,byrow = TRUE,ncol = 3))
matrix_c

colnames(matrix_c)<-c("","","add_col")
matrix_c

rownames(matrix_c)<-c("","","","","","add_row")

matrix_c
