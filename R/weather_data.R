#' Weather Data
#'
#' A dataset containing detailed weather information.
#'
#' @format A data frame with N rows and 35 columns:
#' \describe{
#'   \item{id}{Unique identifier for the weather station.}
#'   \item{fecha}{Date of the measurement (in "YYYY-MM-DD" format).}
#'   \item{temperatura_abrigo_150cm}{Average temperature recorded at 150 cm in a meteorological shelter (in degrees Celsius).}
#'   \item{temperatura_abrigo_150cm_maxima}{Maximum temperature recorded at 150 cm in a meteorological shelter (in degrees Celsius).}
#'   \item{temperatura_abrigo_150cm_minima}{Minimum temperature recorded at 150 cm in a meteorological shelter (in degrees Celsius).}
#'   \item{temperatura_intemperie_5cm_minima}{Minimum temperature recorded at 5 cm outdoors (in degrees Celsius).}
#'   \item{temperatura_intemperie_50cm_minima}{Minimum temperature recorded at 50 cm outdoors (in degrees Celsius).}
#'   \item{temperatura_suelo_5cm_media}{Average soil temperature at 5 cm depth (in degrees Celsius).}
#'   \item{temperatura_suelo_10cm_media}{Average soil temperature at 10 cm depth (in degrees Celsius).}
#'   \item{temperatura_inte_5cm}{Average temperature recorded at 5 cm outdoors (in degrees Celsius).}
#'   \item{temperatura_intemperie_150cm_minima}{Minimum temperature recorded at 150 cm outdoors (in degrees Celsius).}
#'   \item{humedad_suelo}{Soil moisture percentage.}
#'   \item{precipitacion_pluviometrica}{Accumulated rainfall over a period (in mm).}
#'   \item{granizo}{Presence of hail (yes/no).}
#'   \item{nieve}{Presence of snow (yes/no).}
#'   \item{heliofania_efectiva}{Effective sunshine hours.}
#'   \item{heliofania_relativa}{Percentage of effective sunshine relative to the maximum possible.}
#'   \item{tesion_vapor_media}{Average vapor pressure (in hPa).}
#'   \item{humedad_media}{Average relative humidity (in percentage).}
#'   \item{humedad_media_8_14_20}{Average relative humidity at 8, 14, and 20 hours (in percentage).}
#'   \item{rocio_medio}{Average dew point temperature (in degrees Celsius).}
#'   \item{duracion_follaje_mojado}{Duration in hours of wet foliage.}
#'   \item{velocidad_viento_200cm_media}{Average wind speed at 200 cm height (in km/h).}
#'   \item{direccion_viento_200cm}{Wind direction at 200 cm height (in degrees).}
#'   \item{velocidad_viento_1000cm_media}{Average wind speed at 1000 cm height (in km/h).}
#'   \item{direccion_viento_1000cm}{Wind direction at 1000 cm height (in degrees).}
#'   \item{velocidad_viento_maxima}{Maximum wind speed recorded (in km/h).}
#'   \item{presion_media}{Average atmospheric pressure (in hPa).}
#'   \item{radiacion_global}{Global surface radiation (in W/m²).}
#'   \item{radiacion_neta}{Net surface radiation (in W/m²).}
#'   \item{evaporacion_tanque}{Evaporation measured in a tank (in mm).}
#'   \item{evapotranspiracion_potencial}{Potential evapotranspiration (in mm).}
#'   \item{profundidad_napa}{Depth of the water table (in meters).}
#'   \item{horas_frio}{Accumulated cold hours (below 7°C).}
#'   \item{unidad_frio}{Accumulated chill units for crop analysis.}
#' }
#'
#' @source Data collected from meteorological stations.
"weather_data"
