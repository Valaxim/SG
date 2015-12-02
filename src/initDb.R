source("src/wave2mfcc.R")

initDb <- function(
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
filename_0 <-"./baza/k_21.wav"
par_0 <-wave2mfcc(filename_0, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_21 <- colMeans(par_0)
filename_3 <-"./baza/k_33_2.wav"
par_3 <- wave2mfcc(filename_3, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_33_2 <- colMeans(par_3)
filename_8 <-"./baza/k_23.wav"
par_8 <- wave2mfcc(filename_8, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_23 <- colMeans(par_8)
filename_10 <-"./baza/k_58.wav"
par_10 <- wave2mfcc(filename_10, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_58 <- colMeans(par_10)
filename_12 <-"./baza/k_53.wav"
par_12 <- wave2mfcc(filename_12, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_53 <- colMeans(par_12)
filename_17 <-"./baza/k_29.wav"
par_17 <- wave2mfcc(filename_17, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_29 <- colMeans(par_17)
filename_18 <-"./baza/k_28_1.wav"
par_18 <- wave2mfcc(filename_18, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_28_1 <- colMeans(par_18)
filename_20 <-"./baza/k_26_2.wav"
par_20 <- wave2mfcc(filename_20, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_26_2 <- colMeans(par_20)
filename_21 <-"./baza/k_32.wav"
par_21 <- wave2mfcc(filename_21, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_32 <- colMeans(par_21)
filename_24 <-"./baza/k_47.wav"
par_24 <- wave2mfcc(filename_24, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_47 <- colMeans(par_24)
filename_25 <-"./baza/k_45_2.wav"
par_25 <- wave2mfcc(filename_25, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_45_2 <- colMeans(par_25)
filename_29 <-"./baza/k_16_1.wav"
par_29 <- wave2mfcc(filename_29, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_16_1 <- colMeans(par_29)
filename_41 <-"./baza/k_33_1.wav"
par_41 <- wave2mfcc(filename_41, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_33_1 <- colMeans(par_41)
filename_43 <-"./baza/k_38_3.wav"
par_43 <- wave2mfcc(filename_43, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_38_3 <- colMeans(par_43)
filename_46 <-"./baza/k_39.wav"
par_46 <- wave2mfcc(filename_46, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_39 <- colMeans(par_46)
filename_62 <-"./baza/k_57.wav"
par_62 <- wave2mfcc(filename_62, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_57 <- colMeans(par_62)
filename_63 <-"./baza/k_52.wav"
par_63 <- wave2mfcc(filename_63, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_52 <- colMeans(par_63)
filename_69 <-"./baza/k_34.wav"
par_69 <- wave2mfcc(filename_69, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_34 <- colMeans(par_69)
filename_73 <-"./baza/k_42_1.wav"
par_73 <- wave2mfcc(filename_73, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_42_1 <- colMeans(par_73)
filename_75 <-"./baza/k_27_1.wav"
par_75 <- wave2mfcc(filename_75, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_27_1 <- colMeans(par_75)
filename_76 <-"./baza/k_43.wav"
par_76 <- wave2mfcc(filename_76, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_43 <- colMeans(par_76)
filename_82 <-"./baza/k_31_1.wav"
par_82 <- wave2mfcc(filename_82, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_31_1 <- colMeans(par_82)
filename_85 <-"./baza/k_32_2.wav"
par_85 <- wave2mfcc(filename_85, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_32_2 <- colMeans(par_85)
filename_86 <-"./baza/k_39_1.wav"
par_86 <- wave2mfcc(filename_86, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_39_1 <- colMeans(par_86)
filename_91 <-"./baza/k_76.wav"
par_91 <- wave2mfcc(filename_91, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_76 <- colMeans(par_91)
filename_103 <-"./baza/k_26_1.wav"
par_103 <- wave2mfcc(filename_103, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_26_1 <- colMeans(par_103)
filename_106 <-"./baza/k_56.wav"
par_106 <- wave2mfcc(filename_106, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_56 <- colMeans(par_106)
filename_108 <-"./baza/k_41.wav"
par_108 <- wave2mfcc(filename_108, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_41 <- colMeans(par_108)
filename_109 <-"./baza/k_38_2.wav"
par_109 <- wave2mfcc(filename_109, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_38_2 <- colMeans(par_109)
filename_113 <-"./baza/k_59.wav"
par_113 <- wave2mfcc(filename_113, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_59 <- colMeans(par_113)
filename_120 <-"./baza/k_39_2.wav"
par_120 <- wave2mfcc(filename_120, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
k_39_2 <- colMeans(par_120)
dane0 <- rbind(k_21, k_33_2, k_23, k_58, k_53, k_29, k_28_1, k_26_2, k_32, k_47, k_45_2, k_16_1, k_33_1, k_38_3, k_39, k_57, k_52, k_34, k_42_1, k_27_1, k_43, k_31_1, k_32_2, k_39_1, k_76, k_26_1, k_56, k_41, k_38_2, k_59, k_39_2)
plec0 <- c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
wiek0 <- c(21,33,23,58,53,29,28,26,32,47,45,16,33,38,39,57,52,34,42,27,43,31,32,39,76,26,56,41,38,59,39)
filename_1 <-"./baza/m_22.wav"
par_1 <- wave2mfcc(filename_1, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_22 <- colMeans(par_1)
filename_5 <-"./baza/m_45_1.wav"
par_5 <- wave2mfcc(filename_5, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_45_1 <- colMeans(par_5)
filename_6 <-"./baza/m_63.wav"
par_6 <- wave2mfcc(filename_6, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_63 <- colMeans(par_6)
filename_13 <-"./baza/m_32.wav"
par_13 <- wave2mfcc(filename_13, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_32 <- colMeans(par_13)
filename_14 <-"./baza/m_35_2.wav"
par_14 <- wave2mfcc(filename_14, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_35_2 <- colMeans(par_14)
filename_15 <-"./baza/m_34.wav"
par_15 <- wave2mfcc(filename_15, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_34 <- colMeans(par_15)
filename_16 <-"./baza/m_25.wav"
par_16 <- wave2mfcc(filename_16, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_25 <- colMeans(par_16)
filename_19 <-"./baza/m_35_3.wav"
par_19 <- wave2mfcc(filename_19, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_35_3 <- colMeans(par_19)
filename_26 <-"./baza/m_24_2.wav"
par_26 <- wave2mfcc(filename_26, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_24_2 <- colMeans(par_26)
filename_30 <-"./baza/m_39.wav"
par_30 <- wave2mfcc(filename_30, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_39 <- colMeans(par_30)
filename_31 <-"./baza/m_28.wav"
par_31 <- wave2mfcc(filename_31, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_28 <- colMeans(par_31)
filename_32 <-"./baza/m_25_1.wav"
par_32 <- wave2mfcc(filename_32, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_25_1 <- colMeans(par_32)
filename_35 <-"./baza/m_22_2.wav"
par_35 <- wave2mfcc(filename_35, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_22_2 <- colMeans(par_35)
filename_37 <-"./baza/m_33.wav"
par_37 <- wave2mfcc(filename_37, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_33 <- colMeans(par_37)
filename_40 <-"./baza/m_41.wav"
par_40 <- wave2mfcc(filename_40, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_41 <- colMeans(par_40)
filename_44 <-"./baza/m_32_1.wav"
par_44 <- wave2mfcc(filename_44, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_32_1 <- colMeans(par_44)
filename_45 <-"./baza/m_35_4.wav"
par_45 <- wave2mfcc(filename_45, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_35_4 <- colMeans(par_45)
filename_47 <-"./baza/m_43_1.wav"
par_47 <- wave2mfcc(filename_47, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_43_1 <- colMeans(par_47)
filename_48 <-"./baza/m_44_2.wav"
par_48 <- wave2mfcc(filename_48, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_44_2 <- colMeans(par_48)
filename_55 <-"./baza/m_35_1.wav"
par_55 <- wave2mfcc(filename_55, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_35_1 <- colMeans(par_55)
filename_56 <-"./baza/m_25_2.wav"
par_56 <- wave2mfcc(filename_56, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_25_2 <- colMeans(par_56)
filename_59 <-"./baza/m_38_1.wav"
par_59 <- wave2mfcc(filename_59, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_38_1 <- colMeans(par_59)
filename_60 <-"./baza/m_44.wav"
par_60 <- wave2mfcc(filename_60, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_44 <- colMeans(par_60)
filename_65 <-"./baza/m_45.wav"
par_65 <- wave2mfcc(filename_65, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_45 <- colMeans(par_65)
filename_67 <-"./baza/m_35.wav"
par_67 <- wave2mfcc(filename_67, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_35 <- colMeans(par_67)
filename_68 <-"./baza/m_6.wav"
par_68 <- wave2mfcc(filename_68, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_6 <- colMeans(par_68)
filename_70 <-"./baza/m_53.wav"
par_70 <- wave2mfcc(filename_70, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_53 <- colMeans(par_70)
filename_72 <-"./baza/m_29.wav"
par_72 <- wave2mfcc(filename_72, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_29 <- colMeans(par_72)
filename_90 <-"./baza/m_43.wav"
par_90 <- wave2mfcc(filename_90, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_43 <- colMeans(par_90)
filename_92 <-"./baza/m_58.wav"
par_92 <- wave2mfcc(filename_92, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_58 <- colMeans(par_92)
filename_94 <-"./baza/m_38_2.wav"
par_94 <- wave2mfcc(filename_94, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_38_2 <- colMeans(par_94)
filename_95 <-"./baza/m_33_1.wav"
par_95 <- wave2mfcc(filename_95, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_33_1 <- colMeans(par_95)
filename_96 <-"./baza/m_61.wav"
par_96 <- wave2mfcc(filename_96, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_61 <- colMeans(par_96)
filename_99 <-"./baza/m_54_1.wav"
par_99 <- wave2mfcc(filename_99, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_54_1 <- colMeans(par_99)
filename_101 <-"./baza/m_54.wav"
par_101 <- wave2mfcc(filename_101, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_54 <- colMeans(par_101)
filename_102 <-"./baza/m_44_1.wav"
par_102 <- wave2mfcc(filename_102, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_44_1 <- colMeans(par_102)
filename_105 <-"./baza/m_61_1.wav"
par_105 <- wave2mfcc(filename_105, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_61_1 <- colMeans(par_105)
filename_112 <-"./baza/m_36_2.wav"
par_112 <- wave2mfcc(filename_112, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_36_2 <- colMeans(par_112)
filename_114 <-"./baza/m_47.wav"
par_114 <- wave2mfcc(filename_114, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_47 <- colMeans(par_114)
filename_117 <-"./baza/m_13.wav"
par_117 <- wave2mfcc(filename_117, len, overlap, numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm)
m_13 <- colMeans(par_117)
dane1 <- rbind(m_22, m_45_1, m_63, m_32, m_35_2, m_34, m_25, m_35_3, m_24_2, m_39, m_28, m_25_1, m_22_2, m_33, m_41, m_32_1, m_35_4, m_43_1, m_44_2, m_35_1, m_25_2, m_38_1, m_44, m_45, m_35, m_6, m_53, m_29, m_43, m_58, m_38_2, m_33_1, m_61, m_54_1, m_54, m_44_1, m_61_1, m_36_2, m_47, m_13)
plec1 <- c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
wiek1 <- c(22,45,63,32,35,34,25,35,24,39,28,25,22,33,41,32,35,43,44,35,25,38,44,45,35,6,53,29,43,58,38,33,61,54,54,44,61,36,47,13)
dane <- rbind(dane0, dane1)
plec <- c(plec0, plec1)
wiek <- c(wiek0, wiek1)

pc <- prcomp(x=dane,center=TRUE,scale=FALSE)
punkty <- pc$x[,1:2]
return(list("dane" = dane, "punkty" = punkty, "plec" = plec, "wiek" = wiek, "wiekK" = wiek0, "wiekM" = wiek1))
}