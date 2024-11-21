#' Download and Read Weather Data
#'
#' The function `download_and_read_weatherdata()` downloads meteorological data for specified station IDs
#' and saves them to a specified location. The data is then read into R and combined into a single data frame.
#'
#' @param station_ids A vector of station IDs to download. Default is all available stations.
#' @param save_dir A string specifying the directory where the files should be saved.
#'
#' @return A data frame containing the combined data from the specified meteorological stations.
#' @examples
#' download_and_read_weatherdata(c("NH0472", "NH0910"), save_dir = "data/")
#'
#' @export
download_and_read_weatherdata <- function(station_ids = c("NH0472", "NH0910", "NH0046", "NH0098", "NH0437"), save_dir = "data/") {
  base_url <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"

  if (!dir.exists(save_dir)) {
    dir.create(save_dir, recursive = TRUE)
  }

  metadata_url <- paste0(base_url, "metadatos_completos.csv")
  metadata_path <- file.path(save_dir, "metadatos_completos.csv")
  download.file(metadata_url, metadata_path, quiet = TRUE)


  weather_data_list <- list()

  for (station_id in station_ids) {
    station_url <- paste0(base_url, station_id, ".csv")
    station_path <- file.path(save_dir, paste0(station_id, ".csv"))


    download.file(station_url, station_path, quiet = TRUE)

    station_data <- read.csv(station_path)
    weather_data_list[[station_id]] <- station_data
  }

  weather_data <- do.call(rbind, weather_data_list)

  return(weather_data)
}



