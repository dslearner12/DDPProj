#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
#library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
 
  output$distPlot <- renderPlot({
    
    # generate plot based in the column chosen in input$column
        n<-input$column
        x    <- mtcars[,names(mtcars)==n] 
        bins <- seq(min(x), max(x), length.out = 30 + 1)
    
    # draw the histogram with the specified number of bins, and for the chosen column
        hist(x, breaks = bins, col = 'darkgray', border = 'white',main = paste("histogram of ",n))

  })
  
})
