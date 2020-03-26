#create variables to input number of iterations wanted and whether or not a number is "counted"
iterations <-600L
numberCounted <- 0

for (i in 1:iterations){
  # create variable 
  countThisOne <- FALSE

  # generate random number x 
  x <- rnorm(1)
  print(x)
  
  # if number between -1 and 1, count it positive
  if (x<1 & x>-1){
    countThisOne <- TRUE
    numberCounted <- numberCounted + 1
  }
 
}

# total positive results over total iterations 
total <- numberCounted / iterations
total