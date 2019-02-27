##### Carga y extracción de los nombres de las áreas comunitarias del shapefile correspondiente

### Extraer datos del shapefile

# Importar shapefile
library(rgdal)
library(sp)

lim.commu.area = readOGR(dsn = "../datos/Chicago", layer = "geo_export_19d85543-9cf6-462c-b00d-44cf71220775")

# Comprobar clase
class(lim.commu.area)

# Extraer datos y convertir a tibble
commu.area = lim.commu.area@data[,c("area_numbe", "community")]

# Procesar la variable clave foránea de datos
datos$`Community Area` = as.factor(datos$`Community Area`)

### Añadir variables del objeto espacial al tibble

# Se comprueba la unicidad de la clave primaria
commu.area %>%
  count(community) %>%
  filter(n>1)

# Se realiza la unión de ambas tibbles (join)
datos %>%
  left_join(commu.area, by = c("Community Area" = "area_numbe")) -> datos