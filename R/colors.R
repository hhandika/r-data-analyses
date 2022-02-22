# Heru Handika
# Color blind friendly share functions

screaming_squirrels <- c("#BB67FA", "#0072B2", "#F79A1E", "#57B9FA",  "#87FA3E")

drunken_mice <- c("#49868C", "#A0D9D9", "#D9B166", "#BF9969", "#A62D2D", "#D9813B")

scale_color_screaming_squirrels <- function() {
  scale_color_manual(values = screaming_squirrels)
} 

scale_fill_screaming_squirrels <- function() {
  scale_color_manual(values = screaming_squirrels)
}

scale_color_drunken_mice <- function() {
  scale_color_manual(values = drunken_mice)
} 