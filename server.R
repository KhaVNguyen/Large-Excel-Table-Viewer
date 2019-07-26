library(shiny)
library(shinythemes)
library("xlsx")
library("DT")
options(shiny.maxRequestSize=1000*1024^2) 

function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    file <- input$file
    if (!is.null(file)) {
      data <- read.xlsx2(file$name, 1, header=TRUE)
      data
    }
  }, selection = 'none'))
  
}