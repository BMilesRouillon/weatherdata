#' *Celcius To Farenheit*
#'
#'This function `convertir_C_a_F()`converts a temperature given in Celsius to Fahrenheit.
#'
#'This are extra details
#'
#' @param temp_centigrados A numeric value representing the temperature in Celsius.
#'
#' @return A numeric value representing the temperature in Fahrenheit.
#' @examples
#' convertir_C_a_F(20)
#'
#' @export
convertir_C_a_F <- function(temp_centigrados) {
  (temp_centigrados + 32) * 9/5
}
