### Mapa de coropletas: Delitos por área comunitaria

# Paquetes necesarios para cargar y manipular objetos espaciales
library(rgdal)
library(sp)
library(maptools)

# Carga fichero .shp con los polígonos correspondientes a las áreas comunitarias
lim.commu.area = readOGR(dsn = "../datos/Chicago", layer = "geo_export_19d85543-9cf6-462c-b00d-44cf71220775")

# Conteo de delitos por área comunitaria
lim.commu.area = spCbind(lim.commu.area, conteo$n)

# Paquete necesario para la paleta de colores seleccionada
install.packages("RColorBrewer")
library(RColorBrewer)

# Mapa de coropletas
spplot(lim.commu.area, "conteo.n", main = "Delitos por área comunitaria",  
       scales=list(draw=T), cuts = 5, 
       sp.layout=list(arrow), col.regions = brewer.pal(6, "Reds"), 
       xlim = c(-87.95, -87.51), ylim = c(41.63, 42.03)
)