rm(list = ls())

library(testthat)

source("a5_q4.R")

test_that("test_invalid_input_type", {
  input <- matrix(1, 2, 3)
  expected <- "Invalid input type: Input should be a vector."
  expect_error(a5_q4(input), expected)
})

test_that("test_missing_value", {
  input <- c(1, 2, NA, 4, 5)
  expected <-"Missing value error: Input contains missing values."
  expect_error(a5_q4(input), expected)
})

test_that("test_invalid_input", {
  input <- c(1, 2, "3", 4, 5)
  expected <- "Invalid input: Input should contain only numeric values."
  expect_error(a5_q4(input), expected)
})

test_that("test_insufficient_elements", {
  input <- c(1)
  expected <- "Insufficient elements: Input vector does not have enough elements for calculation."
  expect_error(a5_q4(input), expected)
})

