library(tuneR)

filtracja <- function(wave) {
  return(noSilence(wave))
}