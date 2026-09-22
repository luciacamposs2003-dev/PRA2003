#Deliverable week 3 - run a 500k dataset, selects the bacteria in each event and delivers the mean and statistical uncertainty 

##The file provided is too big that it takes a while to obtain the ouput
## the same procedure was made with a file of 500 lines and 4 events, the code runs correctly


#bacterial IDs being studied
bacteria <- c(211, -211, 321, -321, 2212, -2212, 3122, -3122, 3312, -3312, 
3334, -3334)
#total number of bacteria found
total <- rep(0, 12)
#sum of squared numbers of bacteria, needed to calculate later the standard deviation 
squared <- rep(0, 12)
#this function tells the number of bacteria present in each event 
## if an event contains 0 bacteria it will not be included when calculating the average 
n <- rep(0, 12)
#counts of bacteria in the event currently reading 
current <- rep(0, 12)

#open the file
file <- file("output-Set1.txt", "r")

while (TRUE) {
  #read one line
  line <- readLines(file, n = 1)
  #function that tells the loop to stop when the file ends, when there is no more lines 
  if (length(line) == 0) { 
    break
  }
    
  #split the line into separate values 
  values <- strsplit(line, "\\s+")[[1]]
  #line used to check how many values are in one line; 2 indicates header, 4 indicates bacteria information
  if (length(values) == 2) {
    #loop that repeats the code for the 12 IDs  
      for (i in 1:12) {
            if (current[i] > 0) {  ## means that the bacteria was at least present once in the event, otherwise discard
                total[i] <- total[i] + current[i] ## add the total number of bacteria across the different events 
                squared[i] <- squared[i] + current[i]^2
                n[i] <- n[i] + 1
            }
        } 
                      
#starts counting the new event 
current <- rep(0, 12)
} else if (length(values) == 4) {
    #the fourth value is the bacterial ID
    id <- as.numeric(values[4])
    for (i in 1:12) {
        if (id == bacteria[i]) { #check if it is one of the bacteria we want
    }
  }
}
}
#close the file
close(file)
#calculate the average 
average <- total / n
#calculate the standard devuation
standard_deviation <- sqrt((squared - total^2 / n) / (n - 1))
#calculate the statistical uncertainty
uncertainty <- standard_deviation / sqrt(n)

#display a table with the results
results <- data.frame(
Bacterial_ID = bacteria,
Number_of_events = n,
Average = average,
Uncertainty = uncertainty
)

print(results)