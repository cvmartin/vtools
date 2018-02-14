library(lubridate)

context("Usage of time series")

load("qhour.rda")

test_that("kw_to_kwh and kwh_to_kw act in reverse", {
  expect_equal(qhour, kwh_to_kw(kw_to_kwh(qhour)))
})
