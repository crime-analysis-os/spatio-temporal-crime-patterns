# Gráfico de barras: delitos por día de la semana

datos_limpios %>% 
  mutate(wday = wday(Date, label = TRUE, abbr = FALSE)) %>% 
  ggplot(aes(x = wday)) + 
  geom_bar() +
  xlab("") + ylab("") + 
  ggtitle("Delitos por día de la semana") + 
  geom_text(aes(label = ..count..), stat = "count", hjust = 0.5, vjust = 1.25, size = 4, colour = "white") + 
  theme_classic() + 
  theme(axis.line.y = element_blank(), 
        axis.ticks.y = element_blank(), 
        axis.text.y = element_blank(), 
        axis.line.x = element_blank(), 
        axis.ticks.x = element_blank())