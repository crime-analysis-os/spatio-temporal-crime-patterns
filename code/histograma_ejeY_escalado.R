### Histograma con la distribución de delitos por coordenadas escalando el eje y

# Histograma en función de la latitud con el eje y escalado
zoom_lat = ggplot(datos) + 
  geom_histogram(aes(x = Latitude), binwidth = 0.05, colour = "grey60", size = .2) + 
  coord_cartesian(ylim = c(0,1000)) + 
  scale_x_continuous(breaks = pretty(datos$Latitude, n = 6)) + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  ylab("")

# Histograma en función de la longitud con el eje y escalado
zoom_lon = ggplot(datos) + 
  geom_histogram(aes(x = Longitude), binwidth = 0.05, colour = "grey60", size = .2) + 
  coord_cartesian(ylim = c(0,1000)) + 
  xlim(-92, -87) + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  ylab("")

# Paquetes para dibujar el lienzo
install.packages(grid)
install.packages(gridExtra)
library(grid)
library(gridExtra)

# Lienzo con ambos histogramas
grid.arrange(zoom_lat, zoom_lon, ncol = 2, top = "Valores atípicos")