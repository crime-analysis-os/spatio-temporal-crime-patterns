#Pol�gono de frecuencias: Evoluci�n del patr�n anual

datos %>% 
  ggplot(aes(x = Date)) + 
  geom_freqpoly(bins = 216) + 
  xlab("") + ylab("") + 
  ggtitle("Evoluci�n del patr�n anual")