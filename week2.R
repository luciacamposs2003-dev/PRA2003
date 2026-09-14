#Deliverable week 2
deliverable2 <- function() {
#To read the file provided 
data <- read.table("output-Set0.txt", skip = 1) #Skip 1 is used to skip the first line that contains only 1 29 headers
#For loop used to repeat the momentum calculation for every row, one bacteria at a time
for (i in 1:nrow(data)) {
    px <- data[i, 1]
    py <- data[i, 2]
    pz <- data[i, 3]

    data[i, 5] <- sqrt(px^2 + py^2 + pz^2)
}

colnames(data)[5] <- "momentum"
print(data)
}
deliverable2()