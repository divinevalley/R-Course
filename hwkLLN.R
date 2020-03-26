#create variables to input number of iterations wanted and whether or not a number is "counted"
iterations <-600L  #this number to be edited based on iterations wanted
counterInRange <- 0

for (i in 1:iterations){
  
  # generate random number x 
  x <- rnorm(1)
  print(x)
  
  # if number between -1 and 1, count it
  if (x<1 & x>-1){
    counterInRange <- counterInRange + 1
  }
 
}

# total "in-range" results over total iterations 
total <- counterInRange / iterations
total