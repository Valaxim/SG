# Wczytuje plik .wav; zwraca macierz n na m gdzie
# n - ilosc okien czasowych
# m - ilosc probek w oknie czasowym
# parametr len zawiera dlugosc okna czasowego w sekundach
# parametr overlap zawiera czesc poprzedniego okna, ktore nachodzi na kolejne okno
# W celu minimalizacji ekeftow brzegowych zastosowano okno Hamminga

setwd("C:/Users/Michał/Documents/sem7/SG/RStudio/segmantacja")
library(tuneR)
library(signal)

sound <- readWave("sounds/kaszanka1.wav") # Odczyt pliku
# output <- sound # Zmienna do zapisu pliku

len <- 0.02 # Dlugosc okna czasowego w sekundach
overlap <- 0.5 # Czesc poprzedniej ramki nachadzacej na kolejna (od 0 do 0.99)

n <- len*sound@samp.rate # Dlugosc okna czasowego w ilosci probek
i <- floor(seq(0, length(sound@left) - n, n*(1 - overlap)) + 1) # Indeksy poczatkow kolejnych ramek

frames <- array(dim = c(length(i), n)) # Zmienna przechowujaca w wierszach kolejne okna czasowe

for(j in seq(1, length(i))) {
  frames[j,] <- sound@left[seq(i[j], i[j] + n - 1)]*hamming(n)
  #   output@left <- sound@left[seq(i[j], i[j] + n - 1)]*hamming(n)
  #   output@right <- sound@right[seq(i[j], i[j] + n - 1)]*hamming(n)
  #   writeWave(output, paste("sounds/frames/frame", j, ".wav", sep = "")) # Zapis do pliku
}
