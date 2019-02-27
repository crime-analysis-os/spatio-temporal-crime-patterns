#Gráfico de barras: Descripción del lugar

prueba %>%
  filter(!is.na(`Location Description`)) %>% 
  mutate(`Location Description` = `Location Description` %>% fct_infreq() %>% fct_rev()) %>%
  ggplot(aes(x = `Location Description`)) + 
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  coord_flip() + 
  xlab("") + ylab("") + 
  ggtitle("Descripción de lugar") + 
  theme_classic() + 
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line.y = element_blank(),
        axis.ticks.y = element_blank())