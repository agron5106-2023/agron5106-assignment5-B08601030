library(testthat)

source("a5_q2.R")

test_that("testing_a5_q2", {
    object <- NA
    expected <- 0
    expect_equal(object, expected)})
    

test_that("test_int1", {
  input1 <- c(2, 3, 4, 5, 6)
  expected1 <- c(5, -1, 20, 0.83)
  result1 <- a5_q2(input1)
  expect_equal(result1, expected1)
})

test_that("test_int2", {
  input2 <- c(1, 1, 1, 1, 1)
  expected2 <- c(2, 0, 1, 1)
  result2 <- a5_q2(input2)
  expect_equal(result2, expected2)
})

test_that("test_int3", {
  input3 <- c(10, 5, 3, 2, 1)
  expected3 <- c(15, 2, 6, 2)
  result3 <- a5_q2(input3)
  expect_equal(result3, expected3)
})

test_that("test_int4", {
  input4 <- c(100, 20, 10, 5, 2)
  expected4 <- c(120, 10, 50, 2.5)
  result4 <- a5_q2(input4)
  expect_equal(result4, expected4)
})

    