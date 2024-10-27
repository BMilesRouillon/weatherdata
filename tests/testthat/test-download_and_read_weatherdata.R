test_that("download_and_read_weatherdata returns a data frame", {
  weather_data <- download_and_read_weatherdata()
  expect_s3_class(weather_data, "data.frame")
})
