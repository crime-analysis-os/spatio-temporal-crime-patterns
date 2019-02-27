#### Gráficos de barras, multivariante: Delitos por día de la semana y tipología

# Paquete para manipulación de fechas
install.packages(lubridate)
library(lubridate)

# Lienzo con todas las gráficas
muestra %>% 
  mutate(wday = wday(Date, label = TRUE, abbr = TRUE)) %>% 
  group_by(wday, `Type of crime`) %>% 
  ggplot(aes(x = wday)) + 
  geom_bar() + 
  facet_wrap(~ `Type of crime`) + 
  ylab("") + xlab("Día de la semana") + 
  ggtitle("Delitos por día de la semana y tipología")