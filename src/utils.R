save_plot <- function(dir, fname) {
  ggsave(here(dir, fname), width = 7, height = 4)
  
  if (is_windowss()) {
    system(paste0("Powershell.exe Start", here(dir, fname)))
  } else {
    system(paste0("open", here(dir, fname)))
  }

}

is_windowss <- function() {
  Sys.info()[['sysname']] == "Windows"
}


