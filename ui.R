library(shiny)
library(ggplot2)

# Define UI for slider demo application
shinyUI(pageWithSidebar(
  
  #  Application title
  headerPanel("BMI Calculator"),
  
  # Sidebar with sliders that demonstrate various available options
  sidebarPanel(
    h4('Calculate Your Body Mass Index (BMI)'),
    h5('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
    h4(' '),
    h4('Instructions'),
    h5('Enter your weight and height using standard or metric measures.'),
    h5('Select "Compute BMI" and your BMI will appear below.'),
    h4(' '),
    h4('BMI Categories:'),
    h5('Underweight = <18.5'),
    h5('Normal weight = 18.5-24.9'),
    h5('Overweight = 25-29.9'),  
    h5('Obesity = BMI of 30 or greater')  
    ),
    
    # Show a table summarizing the values entered
  mainPanel(
        
    tabsetPanel(
      tabPanel("Standard", 
              h5('Enter your height and weight below:'),
              numericInput('height1', 'Height (in)', 0, min=0, max=110),
              numericInput('weight1', 'Weight (lbs)', 0, min=0, max=440),
              submitButton('Compute BMI'),
               h4('Results'),
               h5('You have entered:'),
               h5('Height (in)'),
               verbatimTextOutput("inputHeightin"),
               h5('Weight (lbs)'),
               verbatimTextOutput("inputWeightlbs"),
               h5('Your BMI:'),
               verbatimTextOutput("resultBMI1")          
                ), 
      
      tabPanel("Metric", 
               h5('Enter your height and weight below:'),
               numericInput('height2', 'Height (m)', 0, min=0, max=3),
               numericInput('weight2', 'Weight (kg)', 0, min=0, max=200),
               submitButton('Compute BMI'),
               h4('Results'),
               h5('You have entered:'),
               h5('Height (m)'),
               verbatimTextOutput("inputHeightm"),
               h5('Weight (kg)'),
               verbatimTextOutput("inputWeightkg"),
               h5('Your BMI:'),
               verbatimTextOutput("resultBMI2"))

    
     ) # close tabsetPanel
    ) #close mainPanel
  ) #close pageWithSidebar
) #close shinyUI