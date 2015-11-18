library(shiny)

shinyUI(
    navbarPage(
        "SG: rozpoznawanie płci i wieku",
        tabPanel(
            "Start",
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Przykładowe próbki głosu")),
                    p("Uruchom analizę głosu znanych osób. Próbki te pozwalają przeprowadzić analize poprawności algorytmów."),
                    div(
                        style = "text-align: center;",
                        actionButton("action", label = "Katarzyna Hejke-Gójka", width='20%'),    
                        actionButton("action", label = "Cezary Gmyz", width='20%'),
                        actionButton("action", label = "Renata Gargas", width='20%'),
                        actionButton("action", label = "Piotr Szumlewicz", width='20%')
                    )
                )
            ),
            br(),
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Ma Pan dowód?")),
                    p("Jeżeli nie, to wczytaj sobie własny plik."),
                    div(
                        style = "text-align: center;",
                        fileInput("file", label = "")
                    )
                )
            ),
            br(),
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Rezultat:")),
                    p("Tutaj będzie się pojawiał wykres i może jakieś pola tekstowe?"),
                    div(
                        style = "text-align: center;",
                        p("wykres x od y"),
                        img(src = "testImg.jpg", width="50%", height="50%"),
                        fluidRow(
                            column(3, 
                                textInput("text", label = "Płeć osoby", value = "Tajlor Swift")
                            ),
                            column(3,
                                textInput("text", label = "Wiek osoby", value = "25(?)")    
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
                    style = "text-align: center; font-family: monospace; color: #888;",
                    div(
                        style = "text-align: center; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
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
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Opis czegoś tam")),
                    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            ),
            br(),
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Opis czegoś innego")),
                    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            ),
            br(),
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Opis jeszcze czegoś zupełnie innego")),
                    p("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                       Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            )
        ),
        tabPanel(
            "Autorzy",
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    p(strong("Tytuł: "), "#uzupełnić tytuł#."),
                    p(strong("Kierunek: "), "Automatyka i Robotyka"),
                    p(strong("Przedmiot: "), "Systemy głosowe"),
                    p(strong("Kierunek: "), "Automatyka i Robotyka"),
                    p(strong("Szef grupy: "), "Adam Giża."),
                    p(strong("Riszercz: "), "#wpisać osoby#."),
                    p(strong("Programiści: "), "#wpisać osoby#."),
                    p(strong("Dokumentacja: "), "#wpisać osoby#."),
                    p(strong("Opis programu: "), " # wpisać co robi ten zjebany program# Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                )
            )
        )
    )
)




# shinyUI(
#   fluidPage(
#     titlePanel("Program SG")
#   )
# )

# shinyUI(fluidPage(
#   titlePanel("Program SG"),
#   helpText("Przedmiot: systemy głosowe, temat projektu: analiza czegoś tam(uzupełnić), grupa: 3, kierunek: Automatyka i Robotyka", 
#            "szef grupy: Adam Giża, plebs: reszta członków."),
# 
#   fluidRow(
#     
#     column(4,
#       h3("Wczytaj plik"),
#       p("Wybierz własny plik do analizy."),
#       fileInput("file", label = ""),
#       h3("Przykładowe próbki głosu"),
#       p("Uruchom analizę głosu znanych osób."), br(),
#       actionButton("action", label = "Katarzyba Hejke-Gójka", width='200px'), br(),
#       actionButton("action", label = "Cezary Gmyz", width='200px'), br(),
#       actionButton("action", label = "Adam Małysz", width='200px'), br(),
#       actionButton("action", label = "Renata Gargas", width='200px'), br(),
#       actionButton("action", label = "Lech Wałęsa", width='200px')
#     ),
#     
#     column(3,
#       h3("Opcje"),
#       checkboxInput("checkbox", label = "Opcja 1", value = TRUE),
#       checkboxInput("checkbox", label = "Opcja 2", value = TRUE),
#       checkboxInput("checkbox", label = "Opcja 3", value = TRUE),
#       radioButtons("radio",  label = "", choices = list("Opcja 4" = 1, "Opcja 5" = 2, "Opcja 6" = 3), selected = 1),
#       sliderInput("Opcja 7", label = "Opcja 7", min = 20, max = 100, value = 50),
#       sliderInput("Opcja 8", label = "Opcja 8", min = 0, max = 1, value = 0.5),
#       numericInput("num", label = "Opcja 9", value = 1),
#       selectInput("select", label = "Opcja 10", choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3), selected = 1)
#     ),
#     
#     column(3,
#       h3("Wykres"),
#       plotOutput("wykres tu będzie")
#     )
#   )
# ))

 
