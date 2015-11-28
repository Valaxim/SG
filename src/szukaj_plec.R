source('wave2mfcc.R')
load('baza.RData')

source("wave2mfcc.R")
szukaj_plec <- function(filename,
                        len = 0.02,
                        overlap = 0.05, # Odstep miedzy kolejnymi oknami w sekundach
                        numofMFCC = 25, #ilosc wspolczynnikow wyliczanych dla kazdego okna czasowego
                        dolna_czest = 0, #dolna czestotliwosc dla filtow mel
                        gorna_czest = 8000, #gorna czestotliwosc dla filtrow mel
                        wykladnik_liftera = 0, #wykladnik liftera(cokolwiek to jest)
                        hkt = FALSE, #czy uzywamy hkt lifter
                        czyPowerSpectrum = TRUE, #czy uzywamy powerspectrum czy klasycznego pierwiastka
                        wstepna_filtracja = 0.97, #wspolczynnik wstepnej filtracji
                        dodanieOffsetu = FALSE, #okresla czy dodajemy offset
                        liczbaPasm = 40, #liczba pasm
                        szerokoscPasm = 1 #szerokosc pasm
) {
  parameters = wave2mfcc(filename, len, overlap, numofMFCC, dolna_czest, gorna_czest,
                         wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja,
                         dodanieOffsetu, liczbaPasm, szerokoscPasm)
  pc = prcomp(x = rbind(parameters, dane), center=TRUE,scale=FALSE)
  punkt = pc$x[1, 1:2]
  num = length(plec)
  odleglosci<- rep(0,num);
  wynik_plec <- odleglosci;
  wynik_plec2 <- odleglosci;
  wynik_wiek <- odleglosci;
  for(i in 1:num){
    odleglosci[i] <- 1/(((punkt-punkty[i])^2));
  }
  pl <- sum(plec*odleglosci)/sum(odleglosci)
  if(pl > 1) {
    wynik_plec <- "error"
  }
  else if(pl>=0.5) {
    wynik_plec <- "mezczyzna"
  }
  else{
    wynik_plec <- "kobieta"
  }
  wynik_wiek <- sum(wiek*odleglosci)/sum(odleglosci);
  
  return(list("plec" = wynik_plec, "wiek" = wynik_wiek))
}