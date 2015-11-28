test_szumi<- function(){
    
    # tutaj musi być wywołanie funkcji dla Piotra Szumlewicza
    r <- szukaj_plec("../data/szumi.wav")
    age <- r$wiek
    gender <- r$plec
    name <- "Piotr Szumlewicz"
    age_probal <- "0.48"
    gender_probal <- "0.88"
    path_to_file <- "ścieżka do pliku"
    
    result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
    
    return(result)
}