source('wave2mfcc.R')
load('baza.RData')

source("wave2mfcc.R")
szukaj_plec <- function(filename) {
  parameters = wave2mfcc(filename)
  pc = prcomp(x = rbind(parameters, dane), center=TRUE,scale=FALSE)
  punkt = pc$x[1, 1:2]
  num = length(plec)
  odleglosci<- rep(0,num);
  wynik_plec <- odleglosci;
  wynik_plec2 <- odleglosci;
  wynik_wiek <- odleglosci;
  for(i in 1:num){
    odleglosci[i] <- 1/(((punkt-punkty[i])^2));
  }
  pl <- sum(plec*odleglosci)/sum(odleglosci)
  if(pl > 1) {
    wynik_plec <- "error"
  }
  else if(pl>=0.5) {
    wynik_plec <- "mezczyzna"
  }
  else{
    wynik_plec <- "kobieta"
  }
  wynik_wiek <- sum(wiek*odleglosci)/sum(odleglosci);
  
  return(list("plec" = wynik_plec, "wiek" = wynik_wiek))
}