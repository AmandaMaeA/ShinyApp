library(shiny)

shinyUI(fluidPage(

    titlePanel("How many dogs in NYC share your dog's name?"),

    sidebarLayout(
        sidebarPanel(
            h3('Dog Name:'),
            textInput("dog_name", "Dog Name (IN ALL CAPS)", ""),
            submitButton("Submit")),
        mainPanel(
            verbatimTextOutput("value1"),
            verbatimTextOutput("value2")
    
        )
    )
))