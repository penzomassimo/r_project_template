
# Loading testing library
library(testthat)

# Loading functions to be tested
source("../scripts/helpers.R")

# Test cases
test_that("Test #1",{
  phi <- (1 + sqrt(5))/2
  psi <- (1 - sqrt(5))/2
  expect_equal(Fibonacci(15), (phi**15 - psi**15)/sqrt(5))
})


test_that("Test #2",{
  phi <- (1 + sqrt(5))/2
  psi <- (1 - sqrt(5))/2
  expect_equal(Fibonacci(15), (phi**15 - psi**15)/sqrt(5))
})


test_that("Test #3",{
  phi <- (1 + sqrt(5))/2
  psi <- (1 - sqrt(5))/2
  expect_equal(Fibonacci(15), (phi**15 - psi**15)/sqrt(5))
})



