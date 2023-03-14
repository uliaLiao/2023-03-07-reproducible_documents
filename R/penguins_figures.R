library(palmerpenguins)
library(tidyverse)
library(here)

p<- ggplot(penguins, aes(x=bill_length_mm, 
                         y=flipper_length_mm,
                         color=species)) +
  geom_point() +
  geom_hline(yintercept = 205)+
  geom_vline(xintercept = 45) + theme(panel.grid.major = element_line(colour = "lavenderblush3"),
                                      panel.grid.minor = element_line(colour = "lavenderblush2"),
                                      plot.title = element_text(face = "bold"),
                                      panel.background = element_rect(fill = "white"),
                                      plot.background = element_rect(fill = "darkgray")) +labs(title = "Penguins", x = "bill length (mm)",
                                                                                               y = "flipper length (mm)", subtitle = "Body information",
                                                                                               caption = "A penguin plot")
ggsave(here("output/penguin_plot.png"),p,width = 6,height = 5)
