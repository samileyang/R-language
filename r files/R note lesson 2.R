# Construct a matrix with 5 rows and byrow = TRUE
matrix_a<-matrix(1:10,byrow=TRUE, nrow=5)
matrix_a
# Construct a matrix with 5 rows and byrow = FALSE
matrix_b<-matrix(1:10,byrow=FALSE, nrow=5)
matrix_b
# Construct a matrix with 5 rows without byrow 
matrix_c<-matrix(1:10, nrow=5)
matrix_c
# Print dimension of the matrix with dim()
dim(matrix_b)
# Construct a matrix with 2 columns and byrow = FALSE
matrix_d<-matrix(1:10,byrow=FALSE, ncol=2)
matrix_d
# Transpose of matrix_b
t(matrix_b)

# construct a 3x2 matrix B
B<-matrix(c(2,1,4,5,3,7),nrow=3,byrow=TRUE)
B
# construct a 3x1 matrix C
C<-matrix(c(7,4,2),nrow=3)
C
# combine the columns of B and C with function cbind
cbind(B,C)

# construct a 1x2 matrix D
D<-matrix(c(6,2),nrow=1)
D
# combine the rows of B and D with function rbind
rbind(B,D)

# construct a 5x2 matrix
matrix_a<-matrix(1:10, byrow=FALSE, ncol=2)
matrix_a
# Add an additional column
matrix_b<-cbind(matrix_a, matrix(1:5,ncol=1))
matrix_b
# Add an additional row
matrix_c<-rbind(matrix_b, matrix(1:3,nrow=1))
matrix_c
# Change the column name
colnames(matrix_c)<-c("","","add_col")
matrix_c
# Change the row name
rownames(matrix_c)<-c("","","","","","add_row")
matrix_c

# slice a matrix
# select the element at the first row and second column
matrix_c[1,2]
# select data on the rows 1:3 and columns 2,3
matrix_c[1:3,2:3]
# select all elements of the first column
matrix_c[,1]
# select all elements of the first row
matrix_c[1,]












