#server.R

library(shiny)

BMI <- function(Weight, Height) Weight / (Height/100)^2

server<- function(input, output) {
  output$inputValueWeight <- renderPrint({input$Weight})
  output$inputValueHeight <- renderPrint({input$Height/100})
  output$BMICalculation <- renderPrint({BMI(input$Weight,input$Height)})
}

