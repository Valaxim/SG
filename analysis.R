source('R/segmentacja.R')
source('R/ekstrakcja.R')
source('R/redukcja.R')
source('R/klasyfikacja.R')
source('R/kondominium.R')

#parametry
segmentacja_window <- 0.02
segmentacja_overlap <- 0.5 

input_wave <- readWave("data/dzien_dobry_11.wav")

frames <- segmentacja(input_wave, segmentacja_window, segmentacja_overlap)
traits <- ekstrakcja(frames)
less_traits <- redukcja(traits)
result <- klasyfikacja(less_traits)
gender <- result["gender"]
age <- result["age"]
print(result)

kondominium(niemieckie = TRUE, rosyjskie = TRUE, zydowski_zarzad_powierniczy = TRUE)
