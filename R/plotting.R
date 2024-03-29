
library(readr)
library(ggplot2)
library(here)
library(tidyr)
library(dplyr)

data <- readr::read_csv(here("data", "id_map.csv"))

taxon_summary <- readr::read_csv(here("data", "taxon_summary.csv"))

locus_summary <- readr::read_csv(here("data", "locus_summary.csv"))

melted <- data |> tidyr::pivot_longer(!Locus, names_to = "species", values_to = "present")

melted |> 
  ggplot(aes(x = Locus, y = species, fill = present)) + 
  geom_tile(aes(size = 2)) +
  scale_fill_manual(values = c("white", "black")) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(legend.position = "none")

taxon_summary |>
  dplyr::mutate(site_mb = site_counts / 1e6) |>
  ggplot(aes(x = locus_counts, y = site_mb, color = locus_counts)) + 
  geom_point(size = 2) +
  theme_classic() +
  scale_color_gradient(low="blue", high="red") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(legend.position = "none") +
  labs(x = "Locus Counts", y = "Site Counts (Mb)")
       