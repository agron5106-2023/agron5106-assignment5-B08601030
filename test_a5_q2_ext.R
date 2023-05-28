library(testthat)

source("a5_q2.R")

check_unvalid_input <- function(input) {
  if (any(!is.numeric(input))) {
    stop("Invalid input: Input should contain only numeric values.")
  }
}

input1=c("a","b","c","d","e")

tryCatch(
  {
  check_unvalid_input(input1)
  },
  error = function(e) {
    print("====Invalid Input====")
    print(e)
  }
)


check_unvalid_input_type <- function(input) {
  if (!is.list(input)) {
    stop("Invalid input type: Input should be a list.")
  }
}

input2 <- "not a list"  

tryCatch(
  {
    check_unvalid_input_type(input2)
  },
  error = function(e) {
    print("====Invalid Input Type Check Error====")
    print(e)
  }
)

check_zero_division <- function(input) {
  if (input[5] == 0) {
    stop("Zero division error: Division by zero is not allowed.")
  }
}

input3=c(2, 3, 4, 6, 0) 

tryCatch(
  {
    check_zero_division(input3)
  },
  error = function(e) {
    print("====Zero Division Error====")
    print(e)
  }
)


    

