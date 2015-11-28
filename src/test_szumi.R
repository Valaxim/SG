source("szukaj_plec.R")

test_szumi<- function(options){
    # tutaj musi by?? wywo??anie funkcji dla Piotra Szumlewicza
    r <- szukaj_plec("../data/szumi.wav")
    age <- r$wiek
    gender <- r$plec
    name <- "Piotr Szumlewicz"
    age_probal <- "0.48"
    gender_probal <- "0.88"
    path_to_file <- "??cie??ka do pliku"
    
    result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
    
    return(result)
}