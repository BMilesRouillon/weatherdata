
EstacionesT <- function() {
  metadatos <- readr::read_csv("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/metadatos_completos.csv")
  NH0472 <- readr::read_csv("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0472.csv")
  NH0910 <- readr::read_csv("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0910.csv")
  NH0046 <- readr::read_csv("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0046.csv")
  NH0098 <- readr::read_csv("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0098.csv")
  NH0437 <- readr::read_csv("https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/NH0437.csv")
  estaciones_data <- bind_rows(NH0472, NH0910, NH0046, NH0098, NH0437)
  glimpse(estaciones_data)

  return(estaciones_data)
}



