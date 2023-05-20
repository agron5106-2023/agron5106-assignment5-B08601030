
a1_q2 <- function(input) {
  tryCatch(
    {
      x1=input[[1]]
      x2=input[[2]]
      x3=input[[3]]
      x4=input[[4]]
      x5=input[[5]]
      answer <- c(x1 + x2,
                  x2 - x3,
                  x3 * x4,
                  x4 / x5)
      return(answer)
    },
    error = function(e) {
      return(NA)  
    }
  )
}

