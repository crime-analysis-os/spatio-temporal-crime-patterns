# spatio-temporal-crime-patterns
Code and Data visualization

Para ejecutar el código correspondiente a cada una de las visualizaciones es necesario cargar, previamente, la biblioteca tidyverse y los datos delictivos de la ciudad de Chicago.

install.packages(tidyverse)
library(tidyverse)

datos = read_csv("../datos/Chicago/Crimes_2001_to_present.csv")
