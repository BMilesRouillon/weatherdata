#' *Download and Read Weather Data*
#'
#' The function `download_and_read_weatherdata()` downloads meteorological data from specified URLs
#' and combines the datasets into a single data frame. The function reads data directly from the
#' provided URLs.
#'
#' This function fetches data from various meteorological stations and combines them for further analysis.
#'
#' @return A data frame containing the combined data from multiple meteorological stations.
#' @examples
#' download_and_read_weatherdata()
#'
#' @export
download_and_read_weatherdata <- function() {
    urls <- c(
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv",
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv",
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv",
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv",
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv",
    "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv"
  )
  metadata <- read.csv(url(urls[1]))
  station_0472 <- read.csv(url(urls[2]))
  station_0910 <- read.csv(url(urls[3]))
  station_0046 <- read.csv(url(urls[4]))
  station_0098 <- read.csv(url(urls[5]))
  station_0437 <- read.csv(url(urls[6]))


  weather_data <- rbind(station_0472, station_0910, station_0046, station_0098, station_0437)


  usethis::use_data(weather_data, overwrite = TRUE)


  return(weather_data)
}




