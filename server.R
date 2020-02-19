library(shiny)

server <- function(input, output) {
    output$PREPROCESSING <- renderMenu({
        menuItem("PREPROCESSING", icon = icon("calendar"))
    })
    output$SCATTER <- renderMenu({
        menuItem("SCATTER", icon = icon("calendar"))
    })
    output$DISTRIBUTION <- renderMenu({
        menuItem("DISTRIBUTION", icon = icon("calendar"))
    })
    output$LIVEANALYSIS <- renderMenu({
        menuItem("LIVEANALYSIS", icon = icon("calendar"))
    })
}