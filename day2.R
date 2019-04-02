# logical
v <- TRUE
print(v)
print(class(v))

# numeric
v <- 23.5
print(class(v))

# integer
v <- 2L
print(v)
print(class(v))

# complex
v <- 2+5i
print(v)
print(class(v))

# character
v <- "true"
print(class(v))

# raw
v <- charToRaw("Hello")
print(v)
print(class(v))

# vector.
apple <- c('red','green',"yellow")
print(apple)
print(class(apple))

# list.
list1 <- list(c(2,5,3),21.3,sin)
print(list1)

# matrix.
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print

# array.
a <- array(c('green','yellow'),dim = c(3,3,1))
print(a)

# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')

# Create a factor object.
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))

# data frame.
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)