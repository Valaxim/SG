source("szukaj_plec.R")
test_file<- function(file, options){

  r <- szukaj_plec(file$datapath)
  age <- r$wiek
  gender <- r$plec
	name <- file$name
	age_probal <- "wyliczone prawdopodobie??stwo wieku"
	gender_probal <- "wyliczone prawdopodobie??stwo p??ci"
	path_to_file <- file$datapath

	result <- list("name" = name, "age" = age, "age_probal" = age_probal, "gender" = gender, "gender_probal" = gender_probal, "path" = path_to_file)
	return(result)
}