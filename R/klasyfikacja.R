# knn , train macierz w której poszukujemy podobnego wektora w naszym przypadku to
#będą wektory cech poszczególnych płci,wieku itp, test - testowy wektor, 
#cl to jak się będzie nazywy dla kolejnych wektorów w macierzy train, k to na ilu sąsiadów patrzymy najlepiej 1
# funkcja zwraca gdzie został przypożądkowany testowany wektor zwracając nazwe wektora(z wektora cl) w macierzy train
# ze znalezionych algorytmów ten najbardziej się nadaje do porównywania wektorów.
klasyfikacja <- function(traits) {
  # summary(knn(train, test, cl, k = 1))
  # ^ rzuca: 
  # Błąd w poleceniu 'summary(knn(train, test, cl, k = 1))':
  #  błąd podczas obliczania argumentu 'object' przy wybieraniu metody dla funkcji 'summary': BŁĄD: nie udało się znaleźć funkcji 'knn'
  
  return(NULL)
}


##### Przykład

# Przykładowe wektory klasy A
A1=c(0,0)
A2=c(1,1)
A3=c(2,2)

# Przykładowe wektory klasy B
B1=c(6,6)
B2=c(5.5,7)
B3=c(6.5,5)

# zrobienie z tego macierzy
train=rbind(A1,A2,A3, B1,B2,B3)

#jak będzie podobny wektor do pierwszych 3 to zwróci A, a jeżeli będzie mu bliżej do B
cl=factor(c(rep("A",3),rep("B",3)))

# testowy wektor 3,3
test=c(3, 3)

# załadowanie biblioteki z knn
library(class)

summary(knn(train, test, cl, k = 1))
## zwraca A


Czyli w naszym przypadku cl to nazwy tych kolejnych próbek(znaczy wiek, plec),train to macierz tych próbek
