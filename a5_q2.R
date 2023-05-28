a5_q2 <- function(input) {
  check_invalid_input <- function(input) {
    if (any(!is.numeric(input))) {
      stop("Invalid input: Input should contain only numeric values.")
    }
  }
  
  check_invalid_input_type <- function(input) {
    if (!is.vector(input)) {
      stop("Invalid input type: Input should be a vector.")
    }
  }
  
  check_zero_division <- function(x5) {
    if (x5 == 0) {
      stop("Zero division error: Division by zero is not allowed.")
    }
  }
  
  check_missing_value <- function(input) {
    if (any(is.na(input))) {
      stop("Missing value error: Input contains missing values.")
    }
  }
  
  
  tryCatch(
    {
      check_invalid_input(input)
      check_invalid_input_type(input)
      check_missing_value(input)
      
      x1 <- input[[1]]
      x2 <- input[[2]]
      x3 <- input[[3]]
      x4 <- input[[4]]
      x5 <- input[[5]] # Move this assignment here
      
      check_zero_division(x5) # Call check_zero_division after assigning x5
      
      answer <- c(round(x1 + x2, 2),
                  round(x2 - x3, 2),
                  round(x3 * x4, 2),
                  round(x4 / x5, 2))
      
      return(answer)
    },
    error = function(e) {
      print(paste(e))
    }
  )
}