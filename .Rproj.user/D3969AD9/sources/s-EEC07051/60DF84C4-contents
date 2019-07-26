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
                     accept = c("text/xlxs",
                                ".xlxs",
                                "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
                                "text/csv",
                                "text/comma-separated-values,text/plain",
                                ".csv"
                                )
                     ),
           align="right"
           
    )
  ),
    DT::dataTableOutput("table")
)