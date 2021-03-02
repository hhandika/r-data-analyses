save_plot <- function(dir, fname) {
  ggsave(here(dir, fname), width = 7, height = 4)
  system(paste("Powershell.exe Start ", here(dir, fname)))
}