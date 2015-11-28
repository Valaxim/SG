source("test1.R")
source("initDb.R")

test_all<- function(options){
    
    # tutaj musi być wywołanie funkcji dla Cezarego Gmyza 
#     r <- test1(
#         len = options$len,
#         overlap = options$overlap, 
#         numofMFCC = options$numofMFCC, 
#         dolna_czest = options$dolna_czest, 
#         gorna_czest = options$gorna_czest, 
#         wykladnik_liftera = options$wykladnik_liftera, 
#         hkt = options$hkt, 
#         czyPowerSpectrum = options$czyPowerSpectrum, 
#         wstepna_filtracja = options$wstepna_filtracja, 
#         dodanieOffsetu = options$dodanieOffsetu, 
#         liczbaPasm = options$liczbaPasm, 
#         szerokoscPasm = options$szerokoscPasm 
#     )
    db <- initDb(
        len = options$len,
        overlap = options$overlap, 
        numofMFCC = options$numofMFCC, 
        dolna_czest = options$dolna_czest, 
        gorna_czest = options$gorna_czest, 
        wykladnik_liftera = options$wykladnik_liftera, 
        hkt = options$hkt, 
        czyPowerSpectrum = options$czyPowerSpectrum, 
        wstepna_filtracja = options$wstepna_filtracja, 
        dodanieOffsetu = options$dodanieOffsetu, 
        liczbaPasm = options$liczbaPasm, 
        szerokoscPasm = options$szerokoscPasm 
    )
    
    r <- test1(db,
               options$len,
               options$overlap, 
               options$numofMFCC, 
               options$dolna_czest, 
               options$gorna_czest, 
               options$wykladnik_liftera, 
               options$hkt, 
               options$czyPowerSpectrum, 
               options$wstepna_filtracja, 
               options$dodanieOffsetu, 
               options$liczbaPasm, 
               options$szerokoscPasm)
	name <- "Testowanie wszystkiego"
	gender_probal <- paste("Liczba wykonanych testów: ", r$testy)
	age_probal <- paste("Poprawna detekcja płci [%]: ", round(r$plec_poprawnie / r$testy * 100, 2))
	gender <- "Podsumumowanie testów"
	age <- paste("Średni błąd detekcji wieku: ", round(r$sredni_blad_wiek, 2))
	path_to_file <- ""

	result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	
	return(result)
}