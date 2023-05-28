library(testthat)

source("a5_q2.R")

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

test_that("test_float1", {
  input5 <- c(0.5, 0.1, 0.2, 0.3, 0.4)
  expected5 <- c(0.6, -0.1, 0.06, 0.75)
  result5 <- a5_q2(input5)
  expect_equal(result5, round(expected5, 2))
})

test_that("test_float2", {
  input6 <- c(1.5, 2.2, 3.7, 4.1, 0.9)
  expected6 <- c(3.7, -1.5, 15.17, 4.56)
  result6 <- a5_q2(input6)
  expect_equal(result6, round(expected6, 2))
})
    
test_that("test_all_negative_numbers", {
  input7 <- c(-2, -3, -4, -5, -6)
  expected7 <- c(-5, 1, 20, 0.83)
  result7 <- a5_q2(input7)
  expect_equal(result7, expected7)
})

test_that("test_mixed_numbers1", {
  input8 <- c(-2, 3, -4, 5, -6)
  expected8 <- c(1, 7, -20, -0.83)
  result8 <- a5_q2(input8)
  expect_equal(result8, expected8)
})


test_that("test_mixed_numbers2", {
  input9 <- c(10, -5, 3, -2, 1)
  expected9 <- c(5, -8, -6, -2)
  result9 <- a5_q2(input9)
  expect_equal(result9, expected9)
})

test_that("test_large_numbers", {
   input10 <- c(1000000, 2000000, 3000000, 4000000, 5000000)
   expected10<- c(3000000, -1000000, 12000000000000, 0.8)
   result10 <- a5_q2(input10)
   expect_equal(result10, expected10)
 })
