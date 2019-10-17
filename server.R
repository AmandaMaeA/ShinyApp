library(shiny)
library(readr)

dog_data <- read_csv("https://data.cityofnewyork.us/api/views/nu7n-tubp/rows.csv?accessType=DOWNLOAD")


shinyServer(function(input, output) {

    output$value1 <- renderText({(input$dog_name) })
    
    output$value2 <- renderText({
        length(which(dog_data$AnimalName== input$dog_name))})
    

})
