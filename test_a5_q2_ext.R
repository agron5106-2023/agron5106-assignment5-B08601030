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
  result4 <- a5_q2(input4)
  expect_equal(result4, expected4)
})

test_that("test_missing_value", {
  input5 <- c(1, 2, 3, NA, 3)
  expected5 <- "Error in check_missing_value(input): Missing value error: Input contains missing values.\n"
  result5 <- a5_q2(input5)
  expect_equal(result5, expected5)
})

test_that("test_missing_value", {
  input6 <- c(1, 2, NA, 4, 3)
  expected6 <- "Error in check_missing_value(input): Missing value error: Input contains missing values.\n"
  result6 <- a5_q2(input6)
  expect_equal(result6, expected6)
})

test_that("test_missing_value", {
  input7 <- c(1, NA, 2, 4, 3)
  expected7 <- "Error in check_missing_value(input): Missing value error: Input contains missing values.\n"
  result7 <- a5_q2(input7)
  expect_equal(result7, expected7)
})

test_that("test_missing_value", {
  input8 <- c(NA, 9, 2, 4, 3)
  expected8 <- "Error in check_missing_value(input): Missing value error: Input contains missing values.\n"
  result8 <- a5_q2(input8)
  expect_equal(result8, expected8)
})