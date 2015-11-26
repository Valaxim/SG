test_file<- function(file){

	name <- file$name
	age <- "wyliczony wiek"
	age_probal <- "wyliczone prawdopodobieństwo wieku"
	gender <- "mężczyzna"
	gender_probal <- "wyliczone prawdopodobieństwo płci"
	path_to_file <- file$datapath

	result <- list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	return(result)
}