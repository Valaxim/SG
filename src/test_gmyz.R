source("szukaj_plec.R")
 
test_gmyz<- function(options){
    
    # tutaj musi być wywołanie funkcji dla Cezarego Gmyza 
    r <- szukaj_plec("../data/gmyz.wav")
    age <- r$wiek
    gender <- r$plec
  
	name <- "Cezary Gmyz"
	age_probal <- "0.8"
	gender_probal <- "0.99"
	path_to_file <- "ścieżka do pliku"

	result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	
	return(result)
}