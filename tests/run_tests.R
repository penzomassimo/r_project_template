
# Loading testing library
library(testthat)

# Saving test results from all test in the test folder
test_results <- test_dir("./tests", reporter="summary")

# Printing test results to console
print(test_results)
