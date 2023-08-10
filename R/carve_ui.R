carve_ui <-
 navbarPage(
  "CARVE - Clincal Analysis Results Visualization Ensemble",
  navbarMenu(
   "",
   tabPanel(
    "Analysis Report",
    fluidRow(
     box(
      width = 6,
      title = "Analysis Inputs",
      collapsible = T,
      fluidRow(column(
       width = 4,
       selectInput("Report Type", "repType", choices = c("Table", "Figure")),
       conditionalPanel(
        condition = 'input.repType=="Figure"',
        selectInput(
         "Figure Type",
         "figType",
         choices = c(
          "Bar Chart",
          "Line Plot",
          "Box Plot",
          "Error Bar",
          "Scatter Plot",
          "Histogram"
         )
        ),
        textInput("Report Number", "repNum", value = "1.1"),
       )
      ))
     ),
     box(
      width = 6,
      title = "Inferencial Statistics",
      collapsible = T
     )
    ),
    fluidRow(column(width = 9,
                    wellPanel(
                     h6("Analysis Outputs")
                    )),
             column(width = 3,
                    wellPanel(
                     h6("Report Options")
                    ))),
   ),
   tabPanel("Data Explorer"),
   tabPanel("eSUB Documents"),
   tabPanel("Profiling")
  )
 )
