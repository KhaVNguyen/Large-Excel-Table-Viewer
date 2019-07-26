library(shiny)
library(shinythemes)
library("xlsx")
library("DT")
library("tools")

options(shiny.maxRequestSize=1000*1024^2) 

function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    file <- input$file
    if (!is.null(file)) {
      extension <- file_ext(file$name)
      if (extension == "xlsx") {
        data <- read.xlsx2(file$datapath, 1, header=TRUE)
      } else if (extension == "csv") {
        data <- read.csv(file=file$datapath, header=TRUE, sep=",")
      }
      data
    }
  }, selection = 'none'))
  
}