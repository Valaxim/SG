source("szukaj_plec.R")
test_hejke<- function(){
    
    # tutaj musi być wywołanie funkcji dla Katarzyny Hejke-Gójki
    r <- szukaj_plec("../data/heyke.wav")
    age <- r$wiek
    gender <- r$plec
    name <- "Katarzyna Hejke Gójka"
    age_probal <- "0.5"
    gender_probal <- "0.8"
    path_to_file <- "ścieżka do pliku"
    
    result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
    
    return(result)
}