library(shiny)
library(shinythemes)

fluidPage(
  theme = shinytheme("flatly"),
  
  fluidRow(
    column(6,
           h1("Large DataTable Viewer")
    ),
    column(6,
           fileInput("file", 
                     "Choose a Excel (.xlxs or .csv) file",
                     accept = c("text/csv",
                                "text/comma-separated-values,text/plain",
                                ".csv",
                                "text/xlxs",
                                ".xlxs"))
           
    )
  ),
    DT::dataTableOutput("table")
)