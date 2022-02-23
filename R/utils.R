save_plot <- function(dir, fname, .width = 7, .height = 4, .unit = "in") {
  ggsave(here(dir, fname), width = .width, height = .height, unit = .unit)
  open_file(dir, fname)
}

open_file <- function(dir, fname) {
  if (is_windows
      ()) {
    system(paste0("Powershell.exe Start ", here(dir, fname)))
  } else {
    system(paste0("open ", here(dir, fname)))
  }
}

is_windows <- function() {
  Sys.info()[['sysname']] == "Windows"
}


