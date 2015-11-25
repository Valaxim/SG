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
})

        