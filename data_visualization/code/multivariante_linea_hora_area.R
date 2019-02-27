### Gráficos de líneas, multivariante: Delitos por hora y área comunitaria

# Paquete para manipulación de fechas
install.packages(lubridate)
library(lubridate)

# Lienzo con todas las gráficas
datos %>% 
  filter(!is.na(`Community Name`)) %>% 
  mutate(hour = hour(Date)) %>% 
  group_by(hour, `Community Name`) %>% 
  summarise(
    n = n()
  ) %>%
  ggplot(aes(hour, n)) + 
  geom_line() + 
  facet_wrap(~ `Community Name`) + 
  ylab("") + xlab("hora") + 
  ggtitle("Delitos por hora y área comunitaria")