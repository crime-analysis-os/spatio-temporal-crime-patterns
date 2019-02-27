### Visualización de patrones NA

# Se comprueba que no hay datos duplicados
nrow(datos[duplicated(datos), ])

# Paquete VIM
install.packages("VIM")
library(VIM)

# Histograma y patrón de valores NA
aggr(datos, col = c("green", "red"), 
     numbers = TRUE,
     sortVars = TRUE,
     labels = names(datos),
     cex.axis = 0.70,
     gap = 2,
     ylab = c("Histograma de NA's", "Patrón"))