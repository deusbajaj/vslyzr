#test_barplot.R

library(testthat)
library(vslyzr)
context("barplot")

# ==== BEGIN SETUP AND PREPARE =================================================
#
load("../../data/vslyzr_example.rdata")
#
# ==== END SETUP AND PREPARE ===================================================

test_that("barplot generates errors",  {
  expect_error(varbarplot("vslyzr_example.rdata"), "class(matrix) == \"matrix\" is not TRUE", fixed = TRUE)
})

# [END]
