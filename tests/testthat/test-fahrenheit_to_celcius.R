test_that("Conversion from Fahrenheit to Celsius works correctly", {
  expect_equal(fahrenheit_to_celcius(32), 0)
  expect_equal(fahrenheit_to_celcius(212), 100)
  expect_equal(fahrenheit_to_celcius(-40), -40)
  expect_error(fahrenheit_to_celcius("not a number"))
})
