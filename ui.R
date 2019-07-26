library(shiny)
library(shinythemes)

fluidPage(
  theme = shinytheme("flatly"),
  titlePanel("Large DataTable Viewer"),
  fileInput("file", 
            "Choose a Excel (.xlxs) file",
            accept = c("text/xlxs", ".xlxs")),
    DT::dataTableOutput("table")
)