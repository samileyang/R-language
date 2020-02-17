#load data
housing.df<-read.csv("WestRoxbury.csv",header=TRUE)
# find the dimension of the data frame
dim(housing.df)

# print a list of variables to the screen
names(housing.df)
# print the list in a useful column format
t(t(names(housing.df)))
# check the class of variable REMODEL
class(housing.df$REMODEL)
# Find out all the different levels of variable REMODEL
levels(housing.df$REMODEL)
# Creat dummy variables using dummies package (This step can be skipped for regression)
install.packages("dummies")
library(dummies)
housing.df.dummy <- dummy.data.frame(housing.df,sep=".")
names(housing.df.dummy)
head(housing.df.dummy)
dim(housing.df.dummy)
# drop one of the dummy variables
housing.df.dummy <- housing.df.dummy[,-16]
head(housing.df.dummy)

# use set.seed() to get the same partitions when re-running the R code.
set.seed(1)
# randomly sample 60% of the row IDs for trainning, the remaining $0% for validation
train.rows <- sample(rownames(housing.df),dim(housing.df)[1]*0.6)
train.rows
# collect all the columns with training row ID into training set
train.data <- housing.df[train.rows,]
# assign row IDs that are not already in the training set into validation
valid.rows <- setdiff(rownames(housing.df),train.rows)
valid.data <- housing.df[valid.rows,]

# fit a regression model to training data
# use options() to ensure numbers are not displayed in scientific notation
options(scipen=999)
reg <- lm(TOTAL.VALUE~ .-TAX,data=housing.df,subset=train.rows)
reg <- lm(TOTAL.VALUE~ .-TAX,data=train.data)
reg
summary(reg)

# show the first few records of actual house values, predicted values, and residuals
tr.res <- data.frame(train.data$TOTAL.VALUE,reg$fitted.values,reg$residuals)
head(tr.res)

# apply the regression model to predict validation set
pred <-predict(reg,newdata=valid.data)
vl.res <- data.frame(valid.data$TOTAL.VALUE,pred,residuals=valid.data$TOTAL.VALUE-pred)
head(vl.res)

# calculate prediction errors for the training and validation data
install.packages("forecast")
library(forecast)
# compute accuracy on training set
accuracy(reg$fitted.values,train.data$TOTAL.VALUE)
# compute accuracy on validation set
accuracy(pred,valid.data$TOTAL.VALUE)

# use step() to run backward eliminaiton to reduce predictors
reg.step<-step(reg,direction="backward")
summary(reg.step)

# apply the new regression model to predict validation set
pred<-predict(reg.step,newdata=valid.data)
# compute accuracy on validation set
accuracy(pred,valid.data$TOTAL.VALUE)

# apply the model to new data
new.data<-read.csv("WestRoxbury_new.csv",header=TRUE)
new.data
# predicted TOTAL VALUE for homes with new data
pred<-predict(reg.step,newdata=new.data)
pred


