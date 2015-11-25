test_gmyz<- function(){
    
    # tutaj musi być wywołanie funkcji dla Cezarego Gmyza 
    
	name <- "Cezary Gmyz"
	age <- "48"
	age_probal <- "0.8"
	gender <- "mężczyzna"
	gender_probal <- "0.99"
	path_to_file <- "ścieżka do pliku"

	result = list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	
	return(result)
}