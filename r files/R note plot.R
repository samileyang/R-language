# randomly generate 10 values following normal distributin with mean of 0
# and standard deviation of 1
x<-rnorm(10,0,1)
x
plot(x)

# plot a sine function from range -2pi to 2pi
x<-seq(-2*pi,2*pi,0.1)
x
plot(x,sin(x))

# change color and plot type
plot(x,sin(x),type="l",col="red")

# add main title, titles for x axis and y axis
plot(x,sin(x),type="l",col="red",main="sin(x)",xlab="variable x",ylab="cats")

# add lines to the existing plot using lines function
lines(c(-6,6),c(0,0))

# add lines to the existing plot using abline() function
# abline(a,b) the intercept and slope;
# abline(h=) and abline(v=) draw horizontal and vertical lines at the
# specified coordinates
abline(h=0.5)
abline(v=0)

# add points the existing plot using points() function
points(c(-2,2),c(sin(-2),sin(2)),col=3)

# plot a sine function with x range from -6.5 to 6.5, y range from -1.1 to 1.1
x<-seq(-pi,pi,0.1)
plot(x,sin(x),type="l",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col="red",
     xlab="",ylab="")
abline(h=0)
abline(v=0)

# add a plot for a cosine function
y<-seq(-2*pi,2*pi,0.1)
par(new=TRUE)
plot(y,cos(y),type="b",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col=4,
     xlab="",ylab="sin(x) & cos(x)")

# add a plot for tangent function;pch is plotting symbol
z<-seq(-pi,pi,0.1)
par(new=T)
plot(z,tan(z),type="b",pch=4,xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),
     xlab="",ylab="")

# add a legend to the existing plot
legend(-5,1,c("sin","cos","tan"),col=c(2,4,1),pch=c(NA,1,4),lty=c(1,1,1),
       cex=0.5)

# create a multi-paneled plot
x<-seq(-pi,pi,0.1)
y<-seq(-2*pi,2*pi,0.1)
z<-seq(-pi,pi,0.1)
par(mfrow=c(2,3))
plot(x,sin(x),type="l",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col="red",
     xlab="",ylab="")
plot(y,cos(y),type="b",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col=3,
     xlab="",ylab="")
plot(z,tan(z),type="l",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col=4,
     xlab="",ylab="")
plot(x,sin(x),type="b",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col="red",
     xlab="",ylab="")
plot(y,cos(y),type="l",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col=3,
     xlab="",ylab="")
plot(z,tan(z),type="b",xlim=c(-6.5,6.5),ylim=c(-1.1,1.1),col=4,
     xlab="",ylab="")
par(mfrow=c(1,1))

# load data in R
housing.df<-read.csv("BostonHousing.csv")
head(housing.df,9)
Amtrak.df<-read.csv("Amtrak.csv")

#Line chart; use time series analysis
ridership.ts<-ts(Amtrak.df$Ridership,start=c(1991,1),end=c(2004,3),freq=12)
ridership.ts
plot(ridership.ts,xlab="Year",ylab="Ridership (in 000s)",ylim=c(1300,2300))

#Scatterplot; 
plot(housing.df$MEDV~housing.df$LSTAT,xlab="LSTAT",ylab="MEDV")
library(ggplot2)
ggplot(housing.df,aes(x=LSTAT,y=MEDV))+geom_point(colour="navy",alpha=0.7)

#Bar chart
data.for.plot<-aggregate(housing.df$MEDV,by=list(housing.df$CHAS),FUN=mean)
data.for.plot
names(data.for.plot)<-c("CHAS","MeanMEDV")
barplot(data.for.plot$MeanMEDV,names.arg=data.for.plot$CHAS,
        xlab="CHAS",ylab="Avg. MEDV")

# Histogram
hist(housing.df$MEDV,xlab="MEDV")

# Boxplot
boxplot(housing.df$MEDV~housing.df$CHAS,xlab="CHAS",ylab="MEDV")

# Correlation
cor(housing.df$CRIM,housing.df$MEDV)

# calculate correlations of several variables
round(cor(housing.df[,c(2,4,6,8)]),2)

# graphical display of a correlation matrix
install.packages("corrplot")
library(corrplot)
corrplot(cor(housing.df),method="shade")





