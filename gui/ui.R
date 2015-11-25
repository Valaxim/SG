library(shiny)

shinyUI(
    navbarPage(
        "SG: rozpoznawanie płci i wieku",
        tabPanel(
            "Start",
            tags$head(
                tags$link(rel="stylesheet", type="text/css", href="style.css")
            ),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Przykładowe próbki głosu")),
                    div(
                        style = "text-align: center;",
                        actionButton("action_example_1", label = "Katarzyna Hejke-Gójka", width='20%'),    
                        actionButton("action_example_2", label = "Cezary Gmyz", width='20%'),
                        actionButton("action_example_3", label = "Piotr Szumlewicz", width='20%'),
                        actionButton("action_tests", label = "Uruchom testy", width='20%'),
                        textOutput("debug_text")
                    )
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Wczytaj własny plik")),
                    div(
                        style = "text-align: center;",
                        fileInput("file", label = "")
                    )
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Rezultat:")),
                    div(
                        style = "text-align: center;",
                        fluidRow(
                            column(3, 
                                "",
                                textOutput("gender_output")
                            ),
                            column(3, 
                                textOutput("gender_probability_output")
                            ),
                            column(3,
                                textOutput("age_output")    
                            ),
                            column(3,
                                textOutput("age_probability_output")    
                            )
                        )
                    )
                )
            ),
            br()
        ),
        navbarMenu("Ustawienia",
            tabPanel(
                "Opcje algorytmu 1",
                div(
                    class = "outer",
                    div(
                        class = "inner",
                        h4(strong("#uzupełnić nazwę algorytmu#")),
                        p("Może jakiś opis(?)"),
                            div(
                                style = "padding-left: 5%;",
                                sliderInput("len", label = "Długość okienka czasowego[s]", min = 0.01, max = 0.05, value = 0.02),
                                sliderInput("overlap", label = "Część poprzedniej ramki, która nachodzi na kolejną", min = 0, max = 0.6, value = 0.3)
                            )
                    )
                )
            ),
            tabPanel("Opcje algorytmu 2"),
            tabPanel("Opcje algorytmu 3")
        ),
        tabPanel(
            "Dokumentacja",
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Opis czegoś tam")),
                    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Opis czegoś innego")),
                    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Opis jeszcze czegoś zupełnie innego")),
                    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            )
        ),
        tabPanel(
            "Opracowanie teoretyczne",
            HTML("<div id=\"article_list\"></div>"),
            div(
                class = "outer",
                h4("Wyniki pracy grupy „Research”. Wybrane artykuły z krótkim streszczeniem."),
                br(),
                div(
                    class = "inner",
                    h4(strong("Spis treści")),
                    HTML("<a href=\"#article_1\">Artykuł 1</a>"),
                    HTML("<a href=\"#article_2\">Artykuł 2</a>"),
                    HTML("<a href=\"#article_3\">Artykuł 3</a>"),
                    HTML("<a href=\"#article_4\">Artykuł 4</a>"),
                    HTML("<a href=\"#article_5\">Artykuł 5</a>"),
                    HTML("<a href=\"#article_6\">Artykuł 6</a>"),
                    HTML("<a href=\"#article_7\">Artykuł 7</a>"),
                    HTML("<a href=\"#article_8\">Artykuł 8</a>"),
                    HTML("<a href=\"#article_9\">Artykuł 9</a>"),
                    HTML("<a href=\"#article_10\">Artykuł 10</a>")
                )
            ),
            br(),
            div(
                class = "outer",
                br(),
                div(
                    class = "inner",
                    h4(strong("Artykuł I")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_1\"></div>"),
                    em("M. Hasan Bahari, M. McLaren, H. Van hamme, D. Van Leeuwen Age Estimation from Telephone Speech using i-vector: 
                      Center for processing speech and images, KU Leuven, Belgium; Center for Language and Speech Technology,
                      Radboud University Nijmegen, The Netherlands"),
                    br(), br(), 
                    p("Sukces zastosowania technologii  i-vectors w rozpoznawaniu mowy skłonił autora nowego podejścia do problemu oceny wieku 
                      rozmówcy telefonicznego. W metodzie każda wypowiedź jest wzorcowana do korespondującego i-vectora. 
                      Następnie stosuje się regresyjny  wektor nośny (ang. Support Vector Regression  SVR) do oszacowania wieku mówcy. 
                      Metoda została przetestowana oraz nauczona na rozmowach telefonicznych prowadzonych w National Institute for 
                      Standard in Technology (NIST).")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł II")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_2\"></div>"),
                    em("LM. Hasan Bahari, H. Van hamme. Speaker Age Estimation Using Hidden Markov Model Weight Supervectors :Center for 
                      Processing Speech and Images (PSI), Department of Electrical Engineering (ESAT),  KU Leuven, Belgium"),
                    br(), br(),
                    p("W tej pracy przedstawiono metodę opartą na generacji i analizie ukrytego modelu markowa dla każdej próbki danych. 
                      Następnie w celu przybliżenia wieku mówcy używane są 2 algorytmy: LS-SV (regresja wektorów wspierających metodą 
                      najmniejszych kwadratów) oraz WSNMF (algorytm uczenia maszynowego rozpoznający wzorce. 
                      Drugi algorytm redukuje liczbe wymiarów wejścia, a następnie LS-SV określa ostatecznie wiek mówcy.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł III")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_3\"></div>"),
                    em("LE. Yucesoy, V.V. Nabiyev. Gender identification of a speaker using MFCC and GMM: Electrical and Electronics Engineering (ELECO), 
                      2013 8th International Conference"),
                    br(), br(),
                    p("Artykuł opisuje sposób wykrywania płci mówcy na podstawie algorytmu MFCC i związanego z nim współczynnika ( do reprezentowania cech) oraz klasyfikator GMM. 
                      Wyszczególnione są kolejne kroki wydobycia cech metodą MFCC to jest: tłumienie wysokich częstotliwości, podział na ramki, FFT, 
                      wyliczanie współczynnika Mel-scale spectrum oraz współczynnika mel-cepstrum przy użyciu transformaty kosinusowej. 
                      Następnie przedstawiona jest metoda EM algorytmu do estymacji parametrów używana w klasyfikatorze GMM.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł IV")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_4\"></div>"),
                    em("T. Kinnunen, T. Kilpeläinen, P. Fränti. Comparison Of Clustering Algorithms In Speaker Identification: Department Of Computer Science, 
                       University Of Joensuu, Finland."),
                    br(), br(),
                    p("W artykule porównanych  i opisanych zostaje 6 metod rozpoznawania mówcy wykorzystujących algorytmy klasteryzacji. 
                      Klasteryzacja polega na grupowaniu danych o podobnej specyfikacji, w naszym przypadku dane to próbki głosu znajdujące się w bazie."),
                    br(),
                    p("Badane algorytmy to:"),
                    p("- Random: Random codebook"),
                    p("- GLA: Generalized Lloyd algorithm"),
                    p("- SOM: Self-organizing maps"),
                    p("- PNN: Pairwise nearest neighbor"),
                    p("- Split: Iterative splitting technique"),
                    p("- RLS: Randomized local search"),
                    p("Dodatkowo naukowcy z Finlandii przeprowadzili eksperyment, w którym stworzyli 25 osobową bazę (kobiety i mężczyźni), 
                      a następnie wykorzystali do identyfikacji mówcy wyżej wymienione algorytmy. Każdy z algorytmów został oceniony ze względu na szybkość działania, 
                      wartość wskaźnika jakości MSE oraz procentową skuteczności działania."),
                    p(" W przypadku, gdy mamy do czynienia z dużą bazą mówców oraz zależy nam na determinizmie czasowym twórcy artykułu zalecają wykorzystanie algorytmu SPLIT. 
                      W innych przypadkach najlepszym wyborem jest algorytm RLS głównie ze względu na znacznie prostszą implementację.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł V")),
                    HTML("<div id=\"article_5\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    em("S. J Chaudhari, R. M Kagalkar. A Methodology for Efficient Gender Dependent Speaker Age and Emotion Identification System: 
                       International Journal of Advanced Research in Computer and Communication Engineering (IJARCCE) ISSN 2319-5940, Volume 4, Issue 7, July 2015."),
                    br(), br(),
                    p("W pracy możemy znaleźć propozycję systemu do rozpoznawania wieku mówcy na podstawie jego głosu. 
                      Zaproponowany system składa się z dwóch faz : testowej oraz treningowej. Są one podobne do siebie i wewnątrz ich można wydzielić następujące działania:"),
                    p("- ekstrakcja cech"),
                    p("- tworzenie modelu dla każdego mówcy(Gaussian Mixture Model)"),
                    p("- klasyfikacja cech"),
                    p("Ekstrakcja cech polega na podzieleniu sygnału na małe klatki(nie mogą być za krótkie), a następnie wyliczenie dla nich oszacowania periodogramu. 
                      Zastosowanie filtru mel dla każdego banku widma mocy, a następnie dokonanie dyskretnej transformacji kosinusa i odrzucenie odpowiednich współczynników.  
                      Gaussian Mixture Model pozwala na wydzielenie podgrup na podstawie większej grupy. 
                      Wyliczenie parametrów można wykonać korzystając z algorytmów Maximum Posteriori lub Expectation-Maximization. 
                      Przy większej ilości cech można skorzystać z metody SVM, która pozwala na wyodrębnienie cech na hiperpłaszczyźnie.")
     
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł VI")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_6\"></div>"),
                    em("A. Mousa. MareText Independent Speaker Identification  based on K-mean Algorithm: International 
                       Journal on Electrical Engineering and Informatics  -  Volume 3, Number 1, 2011."),
                    br(), br(),
                    p("Artykuł opisuje algorytm MFCC (ang. Mel Frequency Cepstral Coefficient). Technika opiera się na dwóch rodzajach filtrów - 
                      liniowy dla częstotliwości poniżej 1kHz i logarytmiczny dla częstotliwości powyżej 1kHz - sprawia to że informacje zawarte na niskich częstotliwościach 
                      są ważniejsze. Uproszczony schemat działania: podział na klatki -> FFT -> wartość bezwzględna -> filtr MEL -> dyskretna transformacja cosinusowa. 
                      Następnie wykorzystywana jest jedna z metod między innymi ukrytego modelu Markova, wektora kwantyzacji, modelu Gausowskiego.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł VII")),
                    HTML("<div id=\"article_7\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    em(" Z. Gomółka. Identyfikacja mówcy z wykorzystaniem współczynników predykcji liniowej: Instytut Techniki, Uniwersytet Rzeszowski, Rzeszów."),
                    br(), br(),
                    p("W dokumencie przedstawiono metodę klasyfikacji minimalno-odległościowej do wyznaczenia prawdopodobnego mówcy. 
                      Do jego realizacji konieczne jest wyznaczenie tzw. współczynników LPC, czyli współczynników predykcji liniowej, 
                      przy pomocy rekursywnego algorytmu Durbina-Levinsona. Zaletą tej metody jest to, że wystarczy niewielka liczba współczynników do opisania sygnału 
                      mowy z dużą dokładnością. Dokument zawiera również wyniki eksperymentu identyfikacji mówcy przy pomocy aplikacji stworzonej w programie 
                      Matlab z pakietem Signal Processing Toolbox, która została stworzona zgodnie z opisanym algorytmem. W celu sprawdzenia skuteczności systemu, 
                      przeprowadzono serię prób w których wprowadzano zniekształcenia, zmieniano intonację głosu oraz niektóre parametry programu. 
                      System dawał zadowalające wyniki w określonych warunkach pomiarowych.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł VIII")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_8\"></div>"),
                    em("P. Żelasko, A. Trawińska, B. Ziółko, M. Czyżyk, J. Stanisławek, E. Ślusarz. Zastosowanie algorytmu DTW jako narzędzia identyfikacji mówcy : 
                       Problemy Kryminalistyki 280(2) 2013"),
                    br(), br(),
                    p("DTW: dysponując dwoma sygnałami x i  y o długościach, odpowiednio N i M, algorytm układa siatkę o  wymiarach N x M, gdzie w  każdym jej polu 
                      obliczana jest odległość pomiędzy próbkami sygnałów o numerach n i m, gdzie n = 1, 2, …, N i m = 1, 2, …, M. 
                      Następnie poszukiwana jest ścieżka W łącząca punkty (1, 1) i (N, M) w taki sposób, aby koszt przejścia między tymi punktami był jak najmniejszy. 
                      Tak dobrana ścieżka nazywa się optymalną ścieżką dopasowania. Dopasowanie do siebie dwóch sygnałów tą metodą pozwala na określenie odległości między nimi.. 
                      Dysponując zatem dla różnych mówców przebiegami formantowymi różnych samogłosek i zarazem poszczególnych samogłosek z różnych kontekstów fonetycznych, 
                      możemy porównywać badany sygnał z sygnałami referencyjnymi i klasyfikować go jako sygnał tego mówcy, do którego odległość była najmniejsza.")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł IX")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_9\"></div>"),
                    em("A. Wiśniewski. System Rozpoznawania Mówców: Uniwersytet Warmińsko-Mazurski, Olsztyn; Wojskowa Akademia Techniczna, Warszawa."),
                    br(), br(),
                    p("Praca na temat HMM - zastosowania, sposoby realizacji. Idea HMM polega na traktowaniu sygnału mowy jako sekwencji wektorów obserwacji które z jednej strony 
                      stanowią ciąg uczący w procesie tworzenia modeli, a z drugiej – wyjście tych modeli w procesie rozpoznawania. 
                      Ten sposób postępowania umożliwia pokonanie kłopotów związanych z niekompletnością wypowiedzi (nie wszystkie głoski są wypowiadane).")
                )
            ),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł X")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"),
                    HTML("<div id=\"article_10\"></div>"),
                    em("A. Solomonoff, W.M. Campbell, I. Boardman. Advances In Channel Compensation For SVM Speaker Recognition :Acoustics, Speech, and Signal Processing, 2005. 
                       Proceedings. (ICASSP '05). IEEE International Conference on  (Volume:1 )"),
                    br(), br(),
                    p("W tekście opisana jest metoda SVM oparta na sieciach neuronowych. Idea działania sieci typu SVM polega na potraktowaniu zbiorów danych wejściowych 
                      jako wektorów reprezentujących współrzędne punktów w przestrzeni wielowymiarowej. Algorytm SVM dzieli punkty w przestrzeni wielowymiarowej za pomocą 
                      hiperpłaszczyzny separującej.")
                )
            ),
            br()
        ),
        tabPanel(
            "Autorzy",
            div(
                class = "outer",
                div(
                    class = "inner",
                    p(strong("Tytuł: "), "Rozpoznawanie płci i wieku mówcy."),
                    p(strong("Kierunek: "), "Automatyka i Robotyka"),
                    p(strong("Przedmiot: "), "Systemy głosowe"),
                    p(strong("Kierunek: "), "Automatyka i Robotyka"),
                    p(strong("Szef grupy: "), "Adam Giża."),
                    p(strong("Riszercz: "), "Łukasz Żywiec, Damian Koszarek, Piotr Pacanowski, Maciej Piekoszewski, Michał Kiniorski, Renata Gargas, Krzysztof Kardaś, 
                      Krzysztof Mazur, Jakub Hojoł, Mateusz Łubiarz, Adam Stangret."),
                    p(strong("Programiści: "), "Michał Boroń, Jan Stelmasiak,  Karol Zborowski, Wojciech Tobiś, Wojciech Gumuła, Rafał Prusak, Mateusz Małecki."),
                    p(strong("Dokumentacja: "), "Tomasz Kańka."),
                    p(strong("Opis programu:")," Naszym zadaniem było rozpoznawanie płci i wieku mówcy na podstawie badanych próbek. Do realizacji tego programu zastosowaliśmy 
                    algorytm MFCC (Mel-frequency cepstral coefficients), na który składają się następujące kroki:
                    podział na klatki szybka transformata Fouriera (FFT) obłożenie wyniku wartością bezwzględną  filtr melowy dyskretna transformata cosinusowa
                    Cały projekt został wykonany w języku \"R\" wraz z nakładką graficzną \"Shiny\".")
                )
            )
        )
    )
)


 
