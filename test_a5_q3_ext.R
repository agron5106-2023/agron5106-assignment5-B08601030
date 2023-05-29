library(testthat)

source("a5_q3.R")

test_that("test_invalid_input", {
  input <- list(x = "invalid", y = 2)
  expected <- "Error in check_invalid_input(input$x): Error in check_invalid_input(input): Invalid input: Input should contain only numeric values.\n"
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_invalid_input_type", {
  input <- c(1, 2, 3)
  expected <- "Error in check_invalid_input_type(input): Invalid input type: Input should be a list.\n"
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_zero_division", {
  input <- list(x = 5, y = 0)
  expected <- "Error in check_zero_division(input$y): Zero division error: Division by zero is not allowed.\n"
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_missing_value", {
  input <- list(x = 5, y = NA)
  expected <- "Error in check_missing_value(input$y): Missing value error: Input contains missing values.\n"
  result <- a5_q3(input)
  expect_equal(result, expected)
})
