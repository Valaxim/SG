source("src/szukaj_plec.R")
test_hejke<- function(options){
    # tutaj musi by?? wywo??anie funkcji dla Katarzyny Hejke-G??jki
    db <- initDb(
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
        options$szerokoscPasm 
    )
    r <- szukaj_plec("./data/heyke.wav", db,
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
    name <- "Katarzyna Hejke Gójka"
    age_probal <- ""
    gender_probal <- r$plec_probal
    path_to_file <- "Ścieżka do pliku"
    
    result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
    
    return(result)
}