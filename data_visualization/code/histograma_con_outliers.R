### Histograma con la distribuci�n de delitos por coordenadas con outliers

# Histograma en funci�n de la latitud
hist_lat_out = ggplot(datos) + 
  geom_histogram(aes(x = Latitude), binwidth = 0.05, colour = "grey60") + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  #ggtitle("Distribuci�n-outliers") + 
  xlab("Latitude") + 
  ylab("")

# Histograma en funci�n de la longitud
hist_len_out = ggplot(datos) + 
  geom_histogram(aes(x = Longitude), binwidth = 0.05, colour = "grey60") + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank()) + 
  #ggtitle("Distribuci�n-outliers") + 
  xlab("Longitude") + 
  ylab("")

# Paquetes para dibujar el lienzo
install.packages(grid)
install.packages(gridExtra)
library(grid)
library(gridExtra)

# Lienzo con ambos histogramas
grid.arrange(hist_lat_out, hist_len_out, ncol = 2, top = "Distribuci�n de los delitos por coordenadas")