#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Histogram of mtcars data"),
  
  # Sidebar with an input for choosing the column to plot 
  sidebarLayout(
    sidebarPanel(
            selectInput(
                    "column",
                    label = h4("Select a Column in the mtcars data. A histogram will then be plotted for it."),
                    choices = names(mtcars)
            )
    ),
    
    # Show a plot of the generated distribution for the chosen column
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
