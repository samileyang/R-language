housing.df
names(housing.df)
t(t(names(housing.df)))
class(housing.df$REMODEL)

levels(housing.df$REMODEL)
install.packages("dummies")
library(dummies)
housing.df.dummy <- dummy.data.frame(housing.df,sep=".")
names(housing.df.dummy)
head(housing.df.dummy)
dim(housing.df.dummy)

set.seed(1)
train.rows <- sample(rownames(housing.df),dim(housing.df)[1]*0.6)
train.rows
train.data <- housing.df[train.rows,]
valid.rows <- setdiff(rownames(housing.df),train.rows)

options(scipen = 999)
reg <- lm(TOTAL.VALUE~.-TAX,data = housing.df,subset=train.rows)
reg <- lm(TOTAL.VALUE~.-TAX,data = train.data)
reg

summary(reg)

tr.res <- data.frame(train.data$TOTAL.VALUE,reg$fitted.values,reg$residuals)
head(tr.res)

pred <- predict(reg,newdata = valid.data)
pred
v1.res <- data.frame(valid.data$Total.VALUE,pred.residuals)