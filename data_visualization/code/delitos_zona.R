#Gráfico de barras: Delitos por zonas

datos %>%
  filter(!is.na(Side)) %>% 
  mutate(Side = Side %>% fct_infreq() %>% fct_rev()) %>%
  ggplot(aes(x = Side)) + 
  geom_bar() + 
  coord_flip() + 
  xlab("") + ylab("") + 
  ggtitle("Delitos por zonas") + 
  geom_text(aes(label = ..count..), stat = "count", hjust = 1.25, size = 4, colour = "white") + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line.x = element_blank(), 
        axis.text.x = element_blank(), 
        axis.ticks.x = element_blank(),
        axis.line.y = element_blank(),
        axis.ticks.y = element_blank())