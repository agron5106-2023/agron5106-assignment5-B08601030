
a5_q2 <- function(input) {
  tryCatch(
    {
      x1=input[[1]]
      x2=input[[2]]
      x3=input[[3]]
      x4=input[[4]]
      x5=input[[5]]
      answer <- c(round(x1 + x2,2),
                  round(x2 - x3,2),
                  round(x3 * x4,2),
                  round(x4 / x5),2)
      return(answer)
    },
    error = function(e) {
      return(NA)  
    }
  )
}

