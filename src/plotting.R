library(readr)
library(ggplot2)
library(here)
library(tidyr)

data <- readr::read_csv(here("data", "id_map.csv"))

melted <- data |> tidyr::pivot_longer(!Alignments, names_to = "species", values_to = "present")

ggplot(melted, aes(x = Alignments, y = species, fill = present)) + 
  geom_tile() +
  scale_fill_manual(values = c("white", "black")) +
  theme_bw() +
  theme(legend.position = "none")
       