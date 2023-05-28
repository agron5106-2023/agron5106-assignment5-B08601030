library(testthat)

source("a5_q2.R")

test_that("test_invalid_input", {
  input1 <- c("a", "b", "c", "d", "e")
  expected1 <- "Error in check_invalid_input(input): Invalid input: Input should contain only numeric values.\n"
  result1 <- a5_q2(input1)
  expect_equal(result1, expected1)
})


test_that("test_invalid_input_type", {
  input2 <- 1
  expected2 <- "Error in check_invalid_input_type(input): Invalid input type: Input should be a list.\n"
  result2 <- a5_q2(input2)
  expect_equal(result2, expected2)
})


