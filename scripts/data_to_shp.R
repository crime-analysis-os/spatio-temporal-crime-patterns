### Función para exportar un conjunto de datos a formato Shapefile

# Paquetes necesarios
install.packages(c("rgdal", "sp", "raster", "sf"))
library(sp)
library(rgdal)
library(raster)
library(sf)

data_to_shp <- function(datos, 
                        name_outfile = "chicago_subset",
                        crs = "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs") {
  
  # Identificación de las coordenadas para crear un objeto espacial
  coordinates(datos) <- ~Longitude+Latitude
  
  # Se establece el Sistema de Referencia de Coordenadas WGS84 y la proyección (CRS = 4326)
  proj4string(datos) = CRS(crs)
  
  # Se comprueba la clase del objeto espacial
  class(datos)
  
  # Creación del fichero con las geometrías vectoriales en formato Shapefile
  writeOGR(datos, dsn = "../scripts", layer= name_outfile, driver = "ESRI Shapefile")
  
}