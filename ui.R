#ui.R

library(shiny)

ui<-pageWithSidebar(
  # Application title
  headerPanel("Body Mass Index (BMI) Calculator"),
  sidebarPanel(
    numericInput('Weight', 'Bodyweight (kg)', 55, min = 40, max = 300, step = 1
    ),
    numericInput('Height', 'Height (cm)', 150, min = 80, max = 200, step = 1
    ),
    submitButton('Submit')
  ),
  mainPanel(
    h3('Results of BMI Calculation'),
    h4('You entered Weight (kg)'),
    verbatimTextOutput("inputValueWeight"),
    h4('You entered Height (m)'),
    verbatimTextOutput("inputValueHeight"),
    h4('Which resulted in BMI of (Weight/Height*Height) :'),
    verbatimTextOutput("BMICalculation")
  )
)
