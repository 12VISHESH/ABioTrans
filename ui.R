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
    
    dashboardBody()
)