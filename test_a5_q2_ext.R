library(testthat)

source("a5_q2.R")

check_unvalid_input <- function(input) {
  if (any(!is.numeric(input))) {
    stop("Invalid input: Input should contain only numeric values.")
  }
}

input1=c("a","b","c","d","e")

tryCatch(
  check_unvalid_input(input1),
  error = function(e) {
    print("====Invalid input====")
    print(paste(e))
  }
)







    

