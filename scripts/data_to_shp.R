### Funci�n para exportar un conjunto de datos a formato Shapefile

data_to_shp <- function(datos, 
                        name_outfile = "chicago_subset",
                        crs = "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs") {
  
  # Identificaci�n de las coordenadas para crear un objeto espacial
  coordinates(datos) <- ~Longitude+Latitude
  
  # Se establece el Sistema de Referencia de Coordenadas WGS84 y la proyecci�n (CRS = 4326)
  proj4string(datos) = CRS(crs)
  
  # Se comprueba la clase del objeto espacial
  class(datos)
  
  # Creaci�n del fichero con las geometr�as vectoriales en formato Shapefile
  writeOGR(datos, dsn = "../scripts", layer= name_outfile, driver = "ESRI Shapefile")
  
}