library(testthat)

source("a5_q4.R")

test_that("test_int", {
  numbers <- c(1, 2, 3, 4, 5)
  result <- a5_q4(numbers)
  expect_equal(result, 15)
})

test_that("test_float", {
  numbers <- c(1.5, 2.5, 3.5, 4.5, 5.5)
  result <- a5_q4(numbers)
  expect_equal(result, 17.5)
})

test_that("test_negative_num", {
  numbers <- c(-1, -2, -3, -4, -5)
  result <- a5_q4(numbers)
  expect_equal(result, -15)
})

test_that("test_mixed_num", {
  numbers <- c(1, 2.5, 3, 4.5, 5)
  result <- a5_q4(numbers)
  expect_equal(result, 16)
})

test_that("test_large_num", {
  numbers <- c(1e6, 2e6, 3e6, 4e6, 5e6)
  result <- a5_q4(numbers)
  expect_equal(result, 15000000)
})

