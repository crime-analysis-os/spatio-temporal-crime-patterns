#Polígono de frecuencias: Evolución del patrón anual

datos %>% 
  ggplot(aes(x = Date)) + 
  geom_freqpoly(bins = 216) + 
  xlab("") + ylab("") + 
  ggtitle("Evolución del patrón anual")