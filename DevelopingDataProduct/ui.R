## Developing Data Products
## Shiny Application - Monthly Mortgage Payment Calculator
## User Interface

## This application takes the following inputs relating to the mortgage:
## 1. The value of the mortgage / loan amount
## 2. The interest rate for the mortgage
## 3. The term of the mortgage (in years)
## and outputs the expected monthly mortgage payments for an amortizing mortgage

library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Monthly Amortizing Mortgage Payment Calculator"),
        sidebarPanel(
                h6("Please enter the Mortgage Amount, Interest Rate and Term of the Mortgage in the input boxes provided below"),
                h6("The inputs will be used to calculate your monthly mortgage payments after you click the Submit button"),
                numericInput("Value", "Mortgage Amount", 0, min = 0),
                numericInput("rate", label = "Annual Interest Rate in %", 0, min =0),
                numericInput("Term", "Mortgage Term in Years", 0, min = 0),
                submitButton("Submit")
                ),
        mainPanel(
                h3("Monthly Mortgage Payment is"),
                verbatimTextOutput("payment")
                )
        )
)