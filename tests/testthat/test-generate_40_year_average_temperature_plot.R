test_that("generate_40_year_average_temperature_plot works with valid ID", {
  plot <- generate_40_year_average_temperature_plot("NH0472")
  expect_s3_class(plot, "ggplot")
})
