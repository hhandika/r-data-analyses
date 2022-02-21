library(readr)
library(ggplot2)
library(here)
library(tidyr)
library(dplyr)

data <- readr::read_csv(here("data", "id_map.csv"))

melted <- data |> tidyr::pivot_longer(!Alignments, names_to = "species", values_to = "present")

melted |> dplyr::summarise()

ggplot(melted, aes(x = Alignments, y = species, fill = present)) + 
  geom_tile(aes(size = 2)) +
  scale_fill_manual(values = c("white", "black")) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(legend.position = "none")
       