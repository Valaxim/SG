source('R/segmentacja.R')
source('R/ekstrakcja.R')
source('R/redukcja.R')
source('R/klasyfikacja.R')
source('R/kondominium.R')



input_wave <- readWave("data/dzien_dobry_11.wav")
frames <- segmentacja(input_wave)
traits <- ekstrakcja(frames)
less_traits <- redukcja(traits)
result <- klasyfikacja(less_traits)
gender <- result["gender"]
age <- result["age"]
print(result)

#kondominium(niemieckie = TRUE, rosyjskie = TRUE, zydowski_zarzad_powierniczy = TRUE)