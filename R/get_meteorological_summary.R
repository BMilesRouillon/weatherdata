#' *Get Meteorological Summary by ID*
#'
#' This function returns key meteorological summaries, such as mean temperature,
#' maximum temperature, minimum temperature, and average humidity, for a specific `id`.
#'
#' @param id A character or numeric value representing the unique identifier
#' of the weather station.
#'
#' @return A named list with descriptions and values:
#' \describe{
#'   \item{temp_mean}{Mean temperature in Celsius.}
#'   \item{temp_max}{Maximum temperature in Celsius.}
#'   \item{temp_min}{Minimum temperature in Celsius.}
#'   \item{humidity_mean}{Average relative humidity in percentage.}
#' }
#'
#' @examples
#'
#' get_meteorological_summary("NH0046")
#'
#' @export
get_meteorological_summary <- function(id) {
  filtered_data <- dplyr::filter(weather_data, id == !!id)

  if (nrow(filtered_data) == 0) {
    stop("No data found for the provided ID.")
  }

  result <- dplyr::summarise(
    filtered_data,
    temp_mean = mean(temperatura_abrigo_150cm, na.rm = TRUE),
    temp_max = max(temperatura_abrigo_150cm_maxima, na.rm = TRUE),
    temp_min = min(temperatura_abrigo_150cm_minima, na.rm = TRUE),
    humidity_mean = mean(humedad_media_8_14_20, na.rm = TRUE)
  )

  # Format results with descriptions
  list(
    "Mean temperature (Celsius):" = result$temp_mean,
    "Maximum temperature (Celsius):" = result$temp_max,
    "Minimum temperature (Celsius):" = result$temp_min,
    "Average humidity (%):" = result$humidity_mean
  )
}


