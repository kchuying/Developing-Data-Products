library(shiny)

calculateBMI1 <- function(weight1, height1)  (weight1 / (height1 * height1)) * 703
calculateBMI2 <- function(weight2, height2)  (weight2 / (height2 * height2))

# Define server logic for slider examples
shinyServer (function(input, output) {
    #print user input height (in)
    output$inputHeightin <- renderPrint({input$height1})
    #print user input weight (lbs)
    output$inputWeightlbs <- renderPrint({input$weight1}) 
    #calculate BMI 
    output$resultBMI1 <- renderPrint({calculateBMI1(input$weight1, input$height1)}) 
    
    #print user input height (m)
    output$inputHeightm <- renderPrint({input$height2})
    #print user input weight (kg)
    output$inputWeightkg<- renderPrint({input$weight2}) 
    #calculate BMI
    output$resultBMI2 <- renderPrint({calculateBMI2(input$weight2, input$height2)}) 
        
})

