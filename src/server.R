library(shiny)
source("test_gmyz.R")
source("test_szumi.R")
source("test_hejke.R")
source("test_file.R")
source("test_all.R")

shinyServer(function(input, output) {
    
    # wypisanie próbnego tekstu 
#     output$gender_output <- renderText({ 
#         "Pole: płeć osoby"
#     })
#     output$gender_probability_output <- renderText({ 
#         "Pole: prawdopodobieństwo wyznaczenia płci"
#     })
#     output$age_output <- renderText({ 
#         "Pole: wiek osoby"
#     })
#     output$age_probability_output <- renderText({ 
#         "Pole: prawdobodobieństwo wyznaczenia płci"
#     })
#     output$debug_text <- renderText({ 
#         "Uruchom analizę głosu znanych osób. Próbki te pozwalają przeprowadzić analize poprawności algorytmów."
#     })
    # Hejke-Gójka
    observe({
        if (input$action_example_1 > 0) {
            r <- test_hejke()
            name <- r$name
            age <- r$age
            age_probal <- r$age_probal
            gender <- r$gender
            gender_probal <- r$gender_probal
            path <- r$path_to_file
            print(r)
            output$debug_text <- renderText({ 
                name
            })
            output$debug_text2 <- renderText({ 
                path
            })
            output$gender_output <- renderText({ 
                gender
            })
            output$gender_probability_output <- renderText({ 
                gender_probal
            })
            output$age_output <- renderText({ 
                age
            })
            output$age_probability_output <- renderText({ 
                age_probal
            })
        }
    })
    # Cezary Gmyz
    observe({
        if (input$action_example_2 > 0) {
            r <- test_gmyz()
            name <- r$name
            age <- r$age
            age_probal <- r$age_probal
            gender <- r$gender
            gender_probal <- r$gender_probal
            path <- r$path_to_file
            print(r)
            output$debug_text <- renderText({ 
                name
            })
            output$debug_text2 <- renderText({ 
                path
            })
            output$gender_output <- renderText({ 
                gender
            })
            output$gender_probability_output <- renderText({ 
                gender_probal
            })
            output$age_output <- renderText({ 
                age
            })
            output$age_probability_output <- renderText({ 
                age_probal
            })
        }
    })
    # Piotr Szumlewicz
    observe({
        if (input$action_example_3 > 0) {
            r <- test_szumi()
            name <- r$name
            age <- r$age
            age_probal <- r$age_probal
            gender <- r$gender
            gender_probal <- r$gender_probal
            path <- r$path_to_file
            print(r)
            output$debug_text <- renderText({ 
                name
            })
            output$debug_text2 <- renderText({ 
                path
            })
            output$gender_output <- renderText({ 
                gender
            })
            output$gender_probability_output <- renderText({ 
                gender_probal
            })
            output$age_output <- renderText({ 
                age
            })
            output$age_probability_output <- renderText({ 
                age_probal
            })
        }
    })
    # testy wszystkiego
    observe({
        if (input$action_tests > 0) {
            r <- test_all()
            name <- r$name
            age <- r$age
            age_probal <- r$age_probal
            gender <- r$gender
            gender_probal <- r$gender_probal
            path <- r$path_to_file
            print(r)
            output$debug_text <- renderText({ 
                name
            })
            output$debug_text2 <- renderText({ 
                path
            })
            output$gender_output <- renderText({ 
                gender
            })
            output$gender_probability_output <- renderText({ 
                gender_probal
            })
            output$age_output <- renderText({ 
                age
            })
            output$age_probability_output <- renderText({ 
                age_probal
            })
        }
    })
#     observe({
#         inFile <- input$inputFile
#         print(inFile)
#     })
    observe({
        if (input$action_file > 0) {
            print("hehehe")
            r <- test_file(input$inputFile)
            name <- r$name
            age <- r$age
            age_probal <- r$age_probal
            gender <- r$gender
            gender_probal <- r$gender_probal
            path <- r$path
            print(name)
            output$debug_text <- renderText({ 
                name
            })
            output$age_output <- renderText({ 
                age
            })
            output$age_probability_output <- renderText({ 
                age_probal
            })
            output$gender_output <- renderText({ 
                gender
            })
            output$gender_probability_output <- renderText({ 
                gender_probal
            })

        }
    })

})