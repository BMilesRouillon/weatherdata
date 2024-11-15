test_that("get_meteorological_summary throws an error for invalid ID", {
  expect_error(get_meteorological_summary("INVALID_ID"), "No data found for the provided ID.")
})

test_that("get_meteorological_summary executes successfully", {
  expect_silent(get_meteorological_summary("NH0046"))
})
