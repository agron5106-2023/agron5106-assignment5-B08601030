a5_q3 <- function(input) {
  x<-input$x
  y<-input$y
  answer <- list("sum"=round(x+y,2),
                 "difference"=round(x-y,2),
                 "product"=round(x*y,2),
                 "ratio"=round(x/y,2))
  return(answer)
}