a5_q4 <- function(numbers) {
  check_invalid_input_type <- function(numbers) {
    if (!is.vector(numbers)) {
      stop("Invalid input type: Input should be a vector.")
    }
  }
  
  check_missing_value <- function(numbers) {
    if (any(is.na(numbers))) {
      stop("Missing value error: Input contains missing values.")
    }
  }
  
  check_invalid_input <- function(numbers) {
    if (!is.numeric(numbers)) {
      stop("Invalid input: Input should contain only numeric values.")
    }
  }
  
  check_insufficient_elements <- function(numbers) {
    if (length(numbers) < 2) {
      stop("Insufficient elements: Input vector does not have enough elements for calculation.")
    }
  }
  
  tryCatch(
    {
      check_invalid_input_type(numbers)
      check_missing_value(numbers)
      check_invalid_input(numbers)
      check_insufficient_elements(numbers)
      
      answer <-0
      for(i in numbers){
        answer=answer+i
      }
        return(answer)
    },
    error = function(e) {
      stop(e)
    }
  )
}

