library(testthat)

source("a5_q2.R")

test_that("test_invalid_input", {
  input1 <- c("a", "b", "c", "d", "e")
  expected1 <- "Error in check_invalid_input(input): Invalid input: Input should contain only numeric values.\n"
  result1 <- a5_q2(input1)
  expect_equal(result1, expected1)
})


test_that("test_invalid_input_type", {
  input2 <- matrix(1:10, nrow = 2)
  expected2 <- "Error in check_invalid_input_type(input): Invalid input type: Input should be a vector.\n"
  result2 <- a5_q2(input2)
  expect_equal(result2, expected2)
})

test_that("test_zero_division", {
  input3 <- c(1,2,3,4,0)
  expected3 <- "Error in check_zero_division(x5): Zero division error: Division by zero is not allowed.\n"
  result3 <- a5_q2(input3)
  expect_equal(result3, expected3)
})

test_that("test_missing_value", {
  input4 <- c(1, 2, 3, -4, NA)
  expected4 <- "Error in check_missing_value(input): Missing value error: Input contains missing values.\n"
  result4 <- capture_output(a5_q2(input4))
  expect_equal(result4[1], expected4)
})

