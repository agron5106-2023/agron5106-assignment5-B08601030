a5_q3 <- function(input) {
  check_invalid_input <- function(input) {
    if (!is.numeric(input)) {
      stop("Error in check_invalid_input(input): Invalid input: Input should contain only numeric values.")
    }
  }
  
  check_invalid_input_type <- function(input) {
    if (!is.list(input)) {
      stop("Invalid input type: Input should be a list.")
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
      check_invalid_input_type(input)
      check_missing_value(input$x)
      check_missing_value(input$y)
      check_invalid_input(input$x)
      check_invalid_input(input$y)
      check_zero_division(input$y)
      
      x <- input$x
      y <- input$y
      
      answer <- list(
        sum = round(x + y, 2),
        difference = round(x - y, 2),
        product = round(x * y, 2),
        ratio = round(x / y, 2)
      )
      
      return(answer)
    },
    error = function(e) {
      print(paste(e))
    }
  )
}
