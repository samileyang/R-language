boston.housing.df <- read.csv("BostonHousing.csv", header = TRUE) 
head(boston.housing.df,9)
summary(boston.housing.df)
## compute mean, standard dev., min, max, median, length, 
# and missing values for all variables
data.frame(mean=sapply(boston.housing.df, mean), 
           sd=sapply(boston.housing.df, sd), 
           min=sapply(boston.housing.df, min), 
           max=sapply(boston.housing.df, max), 
           median=sapply(boston.housing.df, median), 
           length=sapply(boston.housing.df, length),
           miss.val=sapply(boston.housing.df, function(x) 
             sum(length(which(is.na(x))))))

# create correlation table
round(cor(boston.housing.df),2)

## aggregation
# number of neighborhoods that bound the Charles river vs. that do not
table(boston.housing.df$CHAS)

# create bins of size 1 for RM
boston.housing.df$RM.bin <- .bincode(boston.housing.df$RM,c(1:9))
# compute the average of MEDV by binned RM and CHAS
aggregate(boston.housing.df$MEDV, by=list(RM=boston.housing.df$RM.bin,
                            CHAS=boston.housing.df$CHAS),FUN=mean)

## Principal Component Analysis
cereals.df<-read.csv("Cereals.csv")
# compute PCs on two dimensions
pcs <-prcomp(data.frame(cereals.df$calories,cereals.df$rating))
# summary() gives the reallocated variance
summary(pcs)
# rotation matrix, gives the weights used to project the original points
# onto the two directions
pcs$rot
# PC scores are projected values, depicted by the PCA value x
scores <- pcs$x
head(scores,5)

# PCA using all 13 numberical variables in the dataset
pcs <- prcomp(na.omit(cereals.df[,-c(1:3)]))
summary(pcs)
pcs$rot[,1:5]

# PCA using all Normalized 13 numberical variables in the dataset 
pcs.cor <- prcomp(na.omit(cereals.df[,-c(1:3)]),scale. = T)
summary(pcs.cor)
pcs.cor$rot[,1:9]
scores <-pcs.cor$x
head(scores,5)





