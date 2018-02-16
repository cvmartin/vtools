library(vtools)
context("Usage of time series")

test_that("basic thing", {
  expect_equal(1+1, 2)
})

test_that("kw_to_kwh and kwh_to_kw act in reverse", {
  expect_true(exists("qhour"))
  expect_equivalent(qhour, kwh_to_kw(kw_to_kwh(qhour)))
})
