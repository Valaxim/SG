source("src/szukaj_plec.R")
 
test_gmyz<- function(options){
    
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
    r <- szukaj_plec("./data/radwanska.wav", db,
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
                     options$szerokoscPasm )

    age <- r$wiek
    gender <- r$plec
  
	name <- "Cezary Gmyz"
	age_probal <- ""
	gender_probal <- r$plec_probal
	path_to_file <- "ścieżka do pliku"

	result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	
	return(result)
}