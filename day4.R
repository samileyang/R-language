v <- c(2,5.5,6)
t <- c(8,3,4)
print(v+t)
#和python接近

#求余数
print(v%%t)

#求商数
print(v%/%t)

#指数运算
print(v^t)

#判断每个选项是否都大于
print(v>t)

#判断等于
print(v==t)

#不等于
print(v!=t)

#与或非
# & 它被称为元素逻辑AND运算符。 它将第一向量的每个元素与第二向量的相应元素组合，并且如果两个元素都为TRUE，则给出输出TRUE
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)

#|
v <- c(3,0,TRUE,2+2i)
t <- c(4,0,FALSE,2+3i)
print(v|t)

#！
v <- c(3,0,TRUE,2+2i)
print(!v)


