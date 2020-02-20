library(shiny)
library(shinydashboard)
ui <- dashboardPage(
    dashboardHeader(title = "ABioTrans"),
    dashboardSidebar(
        sidebarMenu(
            menuItemOutput("PREPROCESSING"),
            menuItemOutput("SCATTER"),
            menuItemOutput("DISTRIBUTION"),
            menuItemOutput("LIVEANALYSIS")
        )
    ),
    
    dashboardBody("Welocome the ABioTrans")
)

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

shinyApp(ui, server)