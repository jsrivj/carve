#
# This is a Shiny web application for clinical analysis results and visualization
# ensemble (carve)
#

### Libray Calls
library(shiny)
library(shinydashboard)

carve <- function() {
 shinyApp(ui = carve_ui, server = carve_server)
}
