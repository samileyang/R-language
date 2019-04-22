city <- c("Tampa","Seattle","Hartford","Denver")
state <- c("FL","WA","CT","CO")
zipcode <- c(33602,98104,06161,80294)

addresses <- cbind(city,state,zipcode)

print(addresses)

cat("# # # # The First data frame
") 

new.address <- data.frame(
  city = c("Lowry","Charlotte"),
  state = c("CO","FL"),
  zipcode = c("80230","33949"),
  stringsAsFactors = FALSE
)

# Print the data frame.
print(new.address)

all.addresses <- rbind(addresses,new.address)
print(all.addresses)


library(MASS)
merged.Pima <- merge(x = Pima.te, y = Pima.tr,
                     by.x = c("bp", "bmi"),
                     by.y = c("bp", "bmi")
)
print(merged.Pima)
nrow(merged.Pima)

library(MASS)
print(ships)

molt.ships <- melt(ships, id = c("type","year"))
print(molten.ships)