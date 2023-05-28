
a5_q3 <- function(input) {
    x<-input$x
    y<-input$y
    answer <- list("sum"=x+y,
                   "difference"=x-y,
                   "product"=x*y,
                   "ratio"=x/y)
    return(answer)
}
