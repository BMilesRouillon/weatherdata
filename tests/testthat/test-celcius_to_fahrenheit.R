test_that("celcius_to_fahrenheit throws an error for non-numeric input", {
  expect_error(celcius_to_fahrenheit("twenty"), "non-numeric argument")
})
