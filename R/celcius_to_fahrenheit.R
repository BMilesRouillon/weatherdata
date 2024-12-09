#' *Celcius To Farenheit*
#'
#'This function `celcius_to_fahrenheit()`converts a temperature given in Celsius to Fahrenheit.
#'
#'This are extra details
#'
#' @param temp_centigrados A numeric value representing the temperature in Celsius.
#'
#' @return A numeric value representing the temperature in Fahrenheit.
#' @examples
#' celcius_to_fahrenheit(20)
#'
#' @export
celcius_to_fahrenheit <- function(temp_centigrados) {
  (temp_centigrados + 32) * 9/5
}

