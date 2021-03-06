source('src/wave2mfcc.R')

szukaj_plec <- function(filename, db = initDb(), 
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
  
  dane <- db$dane
  punkty <- db$punkty
  wiek <- db$wiek
  plec <- db$plec
  parameters = wave2mfcc(filename, len, overlap, numofMFCC, dolna_czest, gorna_czest,
                         wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja,
                         dodanieOffsetu, liczbaPasm, szerokoscPasm)
  pc = prcomp(x = rbind(parameters, dane), center=TRUE,scale=FALSE)
  punkt = pc$x[1, 1:2]
  num = length(plec)
  odleglosci<- rep(Inf,num);
  wynik_plec <- odleglosci;
  wynik_plec2 <- odleglosci;
  wynik_wiek <- odleglosci;
  
  for(i in 1:num)
    odleglosci[i] <- 1/((punkt-punkty[i])^2);
  
  if(sum(plec*odleglosci)/sum(odleglosci)>=0.5)
    wynik_plec <- "mezczyzna"
  else
    wynik_plec <- "kobieta"
  
  wynik_wiek <- sum(wiek*odleglosci)/sum(odleglosci);
  
  if (wynik_plec == "mezczyzna") 
    plec_probal <- sum(plec*odleglosci)/sum(odleglosci) * 100
  else
    plec_probal <- (1 - sum(plec*odleglosci)/sum(odleglosci)) * 100
  plec_probal = paste(round(plec_probal, 2), "%", "")
  
  return(list("plec" = wynik_plec, "wiek" = wynik_wiek, "plec_probal" = plec_probal))
}