#library(seewave);
source("fintracja.R")

wave2mfcc <- function(
  nazwa_pliku,
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
)
{
  
  samples <- readWave(nazwa_pliku)
  samplesmono <- mono(samples, "left")
  ##
  samplesmono <- filtracja(samplesmono)
  ##
  
  m1 <-melfcc(samplesmono,
              sr = samplesmono@samp.rate,
              wintime = len, 
              hoptime = overlap,
              numcep = numofMFCC,
              lifterexp = wykladnik_liftera,
              htklifter = hkt,
              sumpower = czyPowerSpectrum,
              preemph = wstepna_filtracja,
              dither = dodanieOffsetu,
              minfreq = dolna_czest,
              maxfreq = gorna_czest,
              nbands = liczbaPasm,
              bwidth = szerokoscPasm, 
              dcttype = c("t2", "t1", "t3", "t4"), 
              fbtype = c("mel", "htkmel", "fcmel", "bark"),
              usecmp = FALSE, 
              modelorder = NULL,
              spec_out = FALSE,
              frames_in_rows = TRUE)
  m1 <- deltas(m1)
  return(m1) 
}