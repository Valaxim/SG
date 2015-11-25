library(shiny)

shinyServer(function(input, output) {
    
    # wypisanie próbnego tekstu 
    output$gender_output <- renderText({ 
        "Pleć osoby"
    })
    output$gender_probability_output <- renderText({ 
        "Prawdopodobieństwo wyznaczenia płci"
    })
    output$age_output <- renderText({ 
        "Wiek osoby"
    })
    output$age_probability_output <- renderText({ 
        "Prawdobodobieństwo wyznaczenia płci"
    })
    output$debug_text <- renderText({ 
        "Uruchom analizę głosu znanych osób. Próbki te pozwalają przeprowadzić analize poprawności algorytmów."
    })
    
    observe({
        # example_1  K. Hejka-Gójka
        if (input$action_example_1 > 0) {
            
            output$debug_text <- renderText({ 
                "Katarzyna Hejke-Gójka"
            })
        }
    })
    observe({
        # example_2  Cezary Gmyz
        if (input$action_example_2 > 0) {
            
            output$debug_text <- renderText({ 
                "Cezary Gmyz"
            })
        }
        
    })
    observe({
        # example_3  Piotr Szumlewicz
        if (input$action_example_3 > 0) {
            
            output$debug_text <- renderText({ 
                "Piotr Szumlewicz"
            })
        }
        
    })
    observe({
        # example_3  Piotr Szumlewicz
        if (input$action_tests > 0) {
            
            output$debug_text <- renderText({ 
                "Uruchomiono testy"
            })
        }
        
    })
    
    
})

        