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
                        actionButton("action", label = "Piotr Szumlewicz", width='20%'),
                        actionButton("action", label = "Uruchom testy", width='20%')
                    )
                )
            ),
            br(),
            div(
                style = "text-align: center; font-family: monospace; color: #888;",
                div(
                    style = "text-align: justify; background-color: #f5f5f5; width: 75%; border: 1px solid #e3e3e3; border-radius: 10px;  display: inline-block; padding: 10px;",
                    h4(strong("Wczytaj własny plik")),
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


 
