source("szukaj_plec.R")

test1 <- function(verbose = FALSE) {
  files = list.files(path = "baza", pattern = "*.wav")
  
  lacznie_plec_poprawna <- 0
  wiek_blad <- 0
  lacznie_testow <- 0
  for (f in files) {
    if (verbose)
      cat(f, "\n")
  
    if (f[1] == "k")
      plec_poprawna <- "kobieta"
    else
      plec_poprawna <- "mezczyzna"
    if (substr(f, 4, 4) == '.' | substr(f, 4, 4) == '_')
      wiek_poprawny <- strtoi(substr(f, 3, 3))
    else
      wiek_poprawny <- strtoi(substr(f, 3, 4))
    wynik <- try(szukaj_plec(f), silent = TRUE)
    if(inherits(wynik, "try-error"))
    {
      if (verbose)
        cat("Blad przetwarzania dla pliku\n")
    }
    else {
      lacznie_testow <- lacznie_testow + 1
      if (plec_poprawna == wynik$plec)
        lacznie_plec_poprawna <- lacznie_plec_poprawna + 1
      wiek_blad <- wiek_blad + abs(wynik$wiek - wiek_poprawny)
      if (verbose)
        cat("Plec poprawna | wykryta | ok\n", plec_poprawna, wynik$plec, plec_poprawna == wynik$plec, '\n')
      if (verbose)
        cat("Wiek poprawny | wykryty | blad\n", wiek_poprawny, round(wynik$wiek), round(abs(wynik$wiek - wiek_poprawny)), '\n')
    }
  }
  
  wiek_blad_sredni <- wiek_blad / lacznie_testow
  
  return(list("testy" = lacznie_testow, "plec_poprawnie" = lacznie_plec_poprawna, "sredni_blad_wiek" = wiek_blad_sredni))
}