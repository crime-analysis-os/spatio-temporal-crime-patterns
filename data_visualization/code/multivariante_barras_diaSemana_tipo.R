#### Gr�ficos de barras, multivariante: Delitos por d�a de la semana y tipolog�a

# Paquete para manipulaci�n de fechas
install.packages(lubridate)
library(lubridate)

# Lienzo con todas las gr�ficas
muestra %>% 
  mutate(wday = wday(Date, label = TRUE, abbr = TRUE)) %>% 
  group_by(wday, `Type of crime`) %>% 
  ggplot(aes(x = wday)) + 
  geom_bar() + 
  facet_wrap(~ `Type of crime`) + 
  ylab("") + xlab("D�a de la semana") + 
  ggtitle("Delitos por d�a de la semana y tipolog�a")