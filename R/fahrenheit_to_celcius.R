#' *Farenheit To Celcius*
#'
#'This function `fahrenheit_to_celsius` converts a temperature given in Farenheit to Celcius.
#'
#'This are extra details
#'
#' @param temperature_fahrenheit A numeric value representing the temperature in Farenheit.
#'
#' @return A numeric value representing the temperature in Celcius.
#' @examples
#' fahrenheit_to_celsius(50)
#'
#' @export
fahrenheit_to_celsius <- function(temperature_fahrenheit) {

  if (!is.numeric(temperature_fahrenheit)) {
    stop("temperature_fahrenheit must be numeric,\n",
         "The variable entered is a ", class(temperature_fahrenheit)[1])
  }
  (temperature_fahrenheit - 32) * 5 / 9
}
