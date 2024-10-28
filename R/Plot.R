#' *Generate 40-Year Average Monthly Temperature Plot*
#'
#' The function `generate_40_year_average_temperature_plot()` generates a plot showing the
#' average temperature of the specified weather station for each month over 40-year intervals.
#' This allows for easy comparison of average temperatures across different months for each 40-year
#' period available in the dataset.
#'
#' @param id Character string representing the ID of the weather station for which to
#'   generate the plot. This should match the station IDs in the `weatherdata` dataset.
#' @return A ggplot object displaying the average monthly temperature for the specified
#'   weather station across 40-year intervals.
#' @examples
#' generate_40_year_average_temperature_plot("NH0472")
#'
#' @import dplyr
#' @import ggplot2
#' @export
generate_40_year_average_temperature_plot <- function(id) {
  data(weather_data, envir = environment())
  station_data <- subset(weather_data, id == id)


  if (!inherits(station_data$fecha, "Date")) {
    station_data$fecha <- as.Date(station_data$fecha)
  }
  station_data$year <- format(station_data$fecha, "%Y")
  station_data$month <- format(station_data$fecha, "%m")

  station_data$period <- floor(as.numeric(station_data$year) / 40) * 40
  monthly_avg_temp <- station_data %>%
    group_by(period, month) %>%
    summarise(avg_temperature = mean(temperatura_abrigo_150cm, na.rm = TRUE))

  plot <- ggplot(monthly_avg_temp, aes(x = month, y = avg_temperature, fill = factor(period))) +
    geom_bar(stat = "identity", position = "dodge", color = "black") +
    scale_fill_brewer(palette = "Set3") +  # Assign colors
    labs(title = paste("Average Monthly Temperature for Station", id),
         x = "Month ",
         y = "Average Temperature",
         fill = "40-Year Period") +
    scale_x_discrete(labels = c("01" = "January", "02" = "February", "03" = "March",
                                "04" = "April", "05" = "May", "06" = "June",
                                "07" = "July", "08" = "August", "09" = "September",
                                "10" = "October", "11" = "November", "12" = "December")) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

  return(plot)
}

