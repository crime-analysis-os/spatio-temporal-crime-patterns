### Histograma con la distribución de delitos por coordenadas con outliers

# Histograma en función de la latitud
hist_lat_out = ggplot(datos) + 
  geom_histogram(aes(x = Latitude), binwidth = 0.05, colour = "grey60") + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  #ggtitle("Distribución-outliers") + 
  xlab("Latitude") + 
  ylab("")

# Histograma en función de la longitud
hist_len_out = ggplot(datos) + 
  geom_histogram(aes(x = Longitude), binwidth = 0.05, colour = "grey60") + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  #ggtitle("Distribución-outliers") + 
  xlab("Longitude") + 
  ylab("")

# Paquetes para dibujar el lienzo
install.packages(grid)
install.packages(gridExtra)
library(grid)
library(gridExtra)

# Lienzo con ambos histogramas
grid.arrange(hist_lat_out, hist_len_out, ncol = 2, top = "Distribución de los delitos por coordenadas")