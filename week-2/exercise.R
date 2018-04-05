## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# Can't get the sum of a number and a character

install.packages("stringr")
library('stringr')

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# should do "library('stringr')"

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# it should be 'initials' not 'initial'


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

a <- c(1, 2, 5)
print(typeof(a))
# double

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  difference <- length(a) - length(b)
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1, 2, 5), c(4, 6))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  difference <- length(a) - length(b)
  if (difference > 0) {
    v <- 'first'
  } else {
    v <- 'second'
    difference = difference / -1
  }
  return(paste('Your', v, 'vector is longer by', difference, 'elements'))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1, 2, 5), c(4, 6))
DescribeDifference(c(4, 6), c(1, 2, 5))


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(a, b, c) {
  return(c(a, b, c))
}

# Send 3 vectors to your function to test it.
CombineVectors(c(1, 2, 3), c(4, 5), c(6, 7))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  for (i in 1:length(courses)) {
    courses[i] <- gsub('[A-Z]', '', courses[i])
  }
  return(courses)
}

CapsTime(c("Informatics 201", "Japanese 113", "Linguistic 200", "Mathematics 308"))