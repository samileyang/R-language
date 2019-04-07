#R语言变量命名规则
#有字母、数字、点和下划线是合法的
var_name2.
#可以用一个点，但是启动点后不应该后跟一个数字
.var_name

#无效变量集合
Var_name% #'%'不被允许
2var_name #不可以以数字开头
.2var_name #起始点后数字非法
_var_name #与python不同 '_'开头是无效的

#print 与cat
var.1 = c(0,1,2,3)
var.2 <- c("learn","R")
c(TRUE,1)->var.3

print(var.1)
cat("var.1 is",var.1,"
")
cat("var.2 is",var.2,"
")
cat("var.3 is",var.3,"
")

print(ls())
print(ls(pattern="var"))

#删除变量
rm(var.3)

rm(list = ls())