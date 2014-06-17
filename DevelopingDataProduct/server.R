## Developing Data Products
## Shiny Application - Monthly Mortgage Payment Calculator
## Shiny Server

## This application takes the following inputs relating to the mortgae:
## 1. The value of the mortgage / loan amoount
## 2. The interest rate for the mortgage
## 3. The term of the mortgage (in years)
## and outputs the expected monthly mortgage payments for an amortizing mortgage

library(shiny)

payment <- function(value, rate, term) {
        i <- (rate / 100) / 12
        n <- term * 12
        value * (i * (1 + i)^n) / ((1 + i)^n - 1) 
}

shinyServer(
        function(input, output) {
                output$payment <- renderPrint({payment(input$Value, input$rate, input$Term)})
        }
)