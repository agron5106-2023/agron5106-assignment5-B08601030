library(testthat)

source("a5_q3.R")

test_that("test_int", {
  input <- list(x = 5, y = 3)
  expected <- list(sum = 8, difference = 2, product = 15, ratio = 1.67)
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_float", {
  input <- list(x = 3.14, y = 1.5)
  expected <- list(sum = 4.64, difference = 1.64, product = 4.71, ratio = 2.09)
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_negative_numbers", {
  input <- list(x = -5, y = -3)
  expected <- list(sum = -8, difference = -2, product = 15, ratio = 1.67)
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_large_numbers", {
  input <- list(x = 1000000, y = 2000000)
  expected <- list(sum = 3000000, difference = -1000000, product = 2000000000000, ratio = 0.5)
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_small_numbers", {
  input <- list(x = 0.001, y = 0.002)
  expected <- list(sum = 0, difference = 0, product = 0, ratio = 0.5)
  result <- a5_q3(input)
  expect_equal(result, expected)
})

test_that("test_mixed_numbers", {
  input <- list(x = 2.5, y = -1.75)
  expected <- list(sum = 0.75, difference = 4.25, product = -4.38, ratio = -1.43)
  result <- a5_q3(input)
  expect_equal(result, expected)
})

