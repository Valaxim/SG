source("test1.R")


test_all<- function(){
    
    # tutaj musi być wywołanie funkcji dla Cezarego Gmyza 
    r <- test1()
    
	name <- "Testowanie wszystkiego"
	age <- paste("Łącznie testów: ", r$testy)
	age_probal <- paste("Łącznie płeć poprawna: ", r$plec_poprawnie)
	gender <- paste("Wiek błąd sredni ", r$sredni_blad_wiek)
	gender_probal <- ""
	path_to_file <- ""

	result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	
	return(result)
}