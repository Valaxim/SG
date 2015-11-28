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
                h4("Kto chce rządzić ludźmi, nie powinien ich gnać przed sobą, lecz sprawić, by podążali za nim."),
                div(
                    class = "inner",
                    h4(strong("Przykładowe próbki głosu")),
                    div(
                        style = "text-align: center;",
                        actionButton("action_example_1", label = "Katarzyna Hejke-Gójka", width='20%'),    
                        actionButton("action_example_2", label = "Cezary Gmyz", width='20%'),
                        actionButton("action_example_3", label = "Piotr Szumlewicz", width='20%'),
                        actionButton("action_tests", label = "Uruchom testy", width='20%'),
                        textOutput("debug_text"),
                        textOutput("debug_text2")
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
                        div(
                            class = "cointainer",
                            div(
                                class = "left",
                                fileInput("inputFile", label = "")
                            ),
                            div(
                                class = "right",
                                actionButton("action_file", label = "Przetestuj plik")
                            )   
                        )                         
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
                                div(
                                    class = "output_field",   
                                    # p("Płeć:"),
                                    textOutput("gender_output")
                                )
                            ),
                            column(3, 
                                div(
                                    class = "output_field",
                                    # p("Prawdopodobieństwo płci"),
                                    textOutput("gender_probability_output")
                                )   
                            ),
                            column(3,
                                div(
                                    class = "output_field",
                                    # p("Wiek"),
                                    textOutput("age_output")    
                                )
                            ),
                            column(3,
                                div(
                                    class = "output_field",
                                    # p("Prawdopodobieństwo wieku"),
                                    textOutput("age_probability_output") 
                                )
                            )
                        )
                    )
                )
            ),
            br()
        ),
        tabPanel("Ustawienia",
                 div(
                     class = "outer",
                     h4("Każda chwila, która mogłaby być wykorzystana lepiej, jest stracona."),
                     div(
                         class = "inner",
                         h4(strong("Ustawienia programu: ")),
                         fluidRow(
                             column(4,
                                    h3("Obelgi – to argumenty tych, którzy nie mają argumentów."),
                                    checkboxInput("PowerSpectrum_checkbox", label = "Użyj PowerSpectrum", value = TRUE),
                                    checkboxInput("hkt_checkbox", label = "Użyj HKT", value = FALSE),
                                    checkboxInput("offset_checkbox", label = "Dodanie offsetu", value = FALSE)
                            ),

                             column(4, 
                                    h3("Cierpliwość jest gorzka, ale jej owoce są słodkie."),
                                    sliderInput("len_slider", label = "Długość okien", min = 0, max = 0.10, value = 0.02),
                                    sliderInput("overlap_slider", label = "Overlapping okien", min = 0, max = 0.10, value = 0.05),
                                    sliderInput("filtr_slider", label = "Współczynnik wstępnej filtracji", min = 0, max = 1, value = 0.97),
                                    sliderInput("freq_slider", label = "Dolna i górna częstotliwość filtracji", min = 0, max = 10000, value = c(100, 5000))
                                    
                            ),
                            column(4, 
                                   h3("To, co zdobyliśmy z największym trudem, najbardziej kochamy."),
                                   numericInput("num_MFCC", label = "Liczba wyznaczanych współczynników", value = 25),
                                   numericInput("num_lifter", label = "Wykładnik liftera HKT", value = 0),
                                   numericInput("num_liczbaPasm", label = "Liczba pasm", value = 40),  
                                   numericInput("num_szerokoscPasma", label = "Szerokość pasma", value = 1)  
                            )   
                         )
                     )
                 )
        ),
        tabPanel(
            "Dokumentacja",
            div(
                class = "outer",
                h4("Prostota jest szczytem wyrafinowania."),
                div(
                    class = "inner",
                    h4(strong("Dokumentacja programu")),
                    HTML("<table class=\"tg\">  <tr>    <th class=\"tg-9hbo\">Lp.</th>    <th class=\"tg-9hbo\">Opis zadania</th>    <th class=\"tg-9hbo\">Spis wej\u015B\u0107, wyj\u015B\u0107 U\u017Cyte biblioteki</th>    <th class=\"tg-9hbo\">Stopie\u0144 trudno\u015Bci zadania</th>    <th class=\"tg-9hbo\">Problemy podczas wykonywania zadania</th>    <th class=\"tg-9hbo\">Jako\u015B\u0107 dokumentacji dostarczonej od grupy \u201EResearch\u201D</th>  </tr>  <tr>    <td class=\"tg-yw4l\">1</td>    <td class=\"tg-9hbo\">Segmentacja</td>    <td class=\"tg-yw4l\" rowspan=\"2\">Wej\u015Bcia:  parametry: len, overlap numofMFCC, dolna_czest, gorna_czest, wykladnik_liftera, hkt, czyPowerSpectrum, wstepna_filtracja, dodanieOffsetu, liczbaPasm, szerokoscPasm U\u017Cyte biblioteki: tuneR</td>    <td class=\"tg-yw4l\" rowspan=\"2\">Zadania okaza\u0142y si\u0119 \u0142atwe w realizacji.</td>    <td class=\"tg-yw4l\" rowspan=\"2\">Research znalaz\u0142 gotow\u0105 funkcj\u0119 realizuj\u0105c\u0105 filtracj\u0119, segmentacj\u0119,i ekstrakcj\u0119 cech (melfcc), co umo\u017Cliwi\u0142o zaoszcz\u0119dzenie czasu i mo\u017Cliwo\u015B\u0107 skupienia si\u0119 na nast\u0119pnych zadaniach,w projekcie.</td>    <td class=\"tg-yw4l\" rowspan=\"2\">Materia\u0142y zgromadzone przez Research okaza\u0142y si\u0119 bardzo dobre, wyszukane,funkcje umo\u017Cliwi\u0142y znaczne zaoszcz\u0119dzenie czasu na tych zadaniach. Dzi\u0119ki temu pierwotne oszacowanie czasu wymaganego na zaimplementowanie tych zada\u0144 okaza\u0142o si\u0119 zawy\u017Cone.</td>  </tr>  <tr>    <td class=\"tg-yw4l\">2</td>    <td class=\"tg-9hbo\">Ekstrakcja cech</td>  </tr>  <tr>    <td class=\"tg-yw4l\">3</td>    <td class=\"tg-9hbo\">Redukcja wymiarowo\u015Bci</td>    <td class=\"tg-yw4l\">Wej\u015Bcia: tablica z parametrami,Wyj\u015Bcia: zredukowana tablica z parametrami U\u017Cyte biblioteki: tuneR</td>    <td class=\"tg-yw4l\">\u0141atwe zadanie.</td>    <td class=\"tg-yw4l\">Z otrzymanej tablicy z parametrami cech MFCC nale\u017Ca\u0142o wybra\u0107 odpowiednie parametry, kt\u00F3re najbardziej odzwierciedla\u0142y r\u00F3\u017Cnic\u0119 pomi\u0119dzy g\u0142osem m\u0119skim i \u017Ce\u0144skim oraz determinuj\u0105ce wiek m\u00F3wcy.</td>    <td class=\"tg-yw4l\" rowspan=\"2\">Grupa researchu wskaza\u0142a pamametry, kt\u00F3rych warto\u015B\u0107 najlepiej oddaje r\u00F3\u017Cnice pomi\u0119dzy g\u0142osem m\u0119skim i \u017Ce\u0144skim. Maj\u0105c n parametr\u00F3w z ekstrakcji cech wybieramy dwa z nich na podstawie korelacji mi\u0119dzy zwracanymi parametrami z funkcji melfcc.</td>  </tr>  <tr>    <td class=\"tg-yw4l\">4</td>    <td class=\"tg-9hbo\">Klasyfikacja pr\u00F3bek</td>    <td class=\"tg-yw4l\">Wej\u015Bcia: pliki Wyj\u015Bcia: wynik testu,(wiek i p\u0142e\u0107) U\u017Cyte biblioteki: tuneR</td>    <td class=\"tg-yw4l\">Zadanie okaza\u0142o si\u0119 \u0142atwe.</td>    <td class=\"tg-yw4l\">Zadaniem by\u0142o ustawienie progu, dla kt\u00F3rego pr\u00F3bka jest zakwalifikowana jako g\u0142os m\u0119ski (poni\u017Cej 0.5) lub \u017Ce\u0144ski (powy\u017Cej 0.5), oraz</td>  </tr>  <tr>    <td class=\"tg-yw4l\">5</td>    <td class=\"tg-9hbo\">Interfejs</td>    <td class=\"tg-yw4l\">Wej\u015Bcia: pliki Wyj\u015Bcia: wynik testu,(wiek i p\u0142e\u0107) U\u017Cyte biblioteki: tuneR</td>    <td class=\"tg-yw4l\">Najtrudniejsze zadanie w ca\u0142ym projekcie.</td>    <td class=\"tg-yw4l\">Programi\u015Bci odpowiedzialni za realizacj\u0119 tego zadania musieli z\u0142o\u017Cy\u0107 w ca\u0142o\u015B\u0107 zadania 1 \u2013 4. Problemem podczas realizacji tego zadania by\u0142a skuteczno\u015B\u0107 wykrywania p\u0142ci i b\u0142\u0119dy w szacowaniu wieku m\u00F3wcy. D\u0105\u017Cyli\u015Bmy do uzyskania jak najwi\u0119kszej skuteczno\u015Bci wykrywania p\u0142ci i minimalizacji b\u0142\u0119du wykrywania wieku.,Skuteczno\u015B\u0107 detekcji p\u0142ci: ok 85 % B\u0142\u0105d detekcji wieku: ok 11 lat</td>    <td class=\"tg-yw4l\">Grupa Researchu dostarczy\u0142a informacje,o,kolejnych wymaganych krokach przy implementacji algorytmu MFCC.</td>  </tr>  <tr>    <td class=\"tg-yw4l\">6</td>    <td class=\"tg-9hbo\">GUI</td>    <td class=\"tg-yw4l\">Prezentujemy: wiek, p\u0142e\u0107 oraz prawdopodobie\u0144stwo uzyskania poprawnego wyniku U\u017Cyte biblioteki: Shiny</td>    <td class=\"tg-yw4l\">Zadanie musia\u0142o zosta\u0107 wykonane jako ostatnie, by\u0142o bardzo czasoch\u0142onne.</td>    <td class=\"tg-yw4l\">Szablon GUI zosta\u0142 zrobiony na samym pocz\u0105tku pracy nad projektem, lecz wersja ko\u0144cowa wymaga\u0142a uko\u0144czonego algorytmu MFCC. Zatem programi\u015Bci odpowiedzialni za GUI mieli kr\u00F3tki zapas czasowy i musieli czeka\u0107 na zako\u0144czenie prac nad algorytmem.</td>    <td class=\"tg-yw4l\">Do tworzenia GUI nie by\u0142a wymagana dokumentacja od grupy Researchu, wykorzystali\u015Bmy kurs dost\u0119pny na stronie Shiny: http://shiny.rstudio.com/tutorial/</td>  </tr></table>")
                )
            ),
            br()
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
                    HTML("<a href=\"#article_1\">Artykuł I</a>"),
                    HTML("<a href=\"#article_2\">Artykuł II</a>"),
                    HTML("<a href=\"#article_3\">Artykuł III</a>"),
                    HTML("<a href=\"#article_4\">Artykuł IV</a>"),
                    HTML("<a href=\"#article_5\">Artykuł V</a>"),
                    HTML("<a href=\"#article_6\">Artykuł VI</a>"),
                    HTML("<a href=\"#article_7\">Artykuł VII</a>"),
                    HTML("<a href=\"#article_8\">Artykuł VIII</a>"),
                    HTML("<a href=\"#article_9\">Artykuł IX</a>"),
                    HTML("<a href=\"#article_10\">Artykuł X</a>")
                )
            ),
            br(),
            HTML("<div id=\"article_1\"></div>"),
            div(
                class = "outer",
                br(),
                div(
                    class = "inner",
                    h4(strong("Artykuł I")), 
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
            HTML("<div id=\"article_2\"></div>"),
            br(),
            div(
                class = "outer",
                div(
                    class = "inner",
                    h4(strong("Artykuł II")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<div id=\"article_3\"></div>"),
                    h4(strong("Artykuł III")),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<div id=\"article_4\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<div id=\"article_6\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<div id=\"article_8\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<div id=\"article_9\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                    HTML("<div id=\"article_10\"></div>"),
                    HTML("<a href=\"#article_list\">Powrót do spisu treści</a>"), br(),
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
                h4("Przydział osób do poszczególnych zadań."),
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


 
