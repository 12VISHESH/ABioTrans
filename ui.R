library(shiny)
library(shinydashboard)
#Ui part of shiny app
shinyUI(dashboardPage(
    dashboardHeader(title = "ABioTrans",titleWidth = 230),
    
    #----------------------SideBar Start-------------------------------------
    dashboardSidebar(
        sidebarMenu(
            menuItem(" Home ", tabName = "first", icon = icon("home")),
            menuItem("Scatter ", tabName = "second", icon = icon("chess-board")),
            menuItem("Preprocessing", tabName = "third", icon = icon("connectdevelop")),
            menuItem("Data analysis", tabName = "fourth", icon = icon("chart-pie"))
        )#Sidebar menu ends here
    ),#sidebar Dashboard ends here
    #----------------------SideBar End-------------------------------------
    
    
    
    #----------------------Body Start-------------------------------------
    dashboardBody(# Boxes need to be put in a row (or column)
       
        tabItems(
            
            tabItem(tabName = "first",
                    
                    verbatimTextOutput(""),
                    h3("Welcome to ABioTrans --"),
                    h4('A Biostatistical tool for Transcriptomics Analysis,'),
                    h4(" ABioTrans, developed in R for gene expression analysis. The tool allows the user to directly read RNA-Seq data files deposited in the Gene Expression Omnibus"),
                    
                    
                    tags$img(src = "a.png", height = 400, width = 400)
                    # -------------------------------
            ),
            
            
            tabItem(tabName = "second", 
                    # -------------------------------
                    
                    selectInput("select1", label = h3("Min Value"), 
                                choices = list(1,2,3,4,5,6,7,8,9,10)),
                    selectInput("select2", label = h3("Max Column"), 
                                choices = list(1,2,3,4,5,6,7,8,9,10)),
                    radioButtons("radio1", label = h3("Normalization Method"),
                                 choices = list("None black"= 1, "RUV brown" = 2), 
                                 selected = 1),
                    plotOutput("boxplot")
                    
                    
                    # -------------------------------
            ),
            
            
            tabItem(tabName = "third", 
                    # -------------------------------
                    
                    verbatimTextOutput(""),
                    h3("//TODO: ")
                    
                    # -------------------------------              
            ),
            
            
            tabItem(tabName = "fourth",
                    # -------------------------------
                    
                    verbatimTextOutput(""),
                    h3("//TODO: ")
                    
                    # -------------------------------
            )
            
        )  
    )#Dashboard Body ends here
    
    #-------------------------Body Ends Here-------------------------------
    
)#End of dashboard page
)#ShinyUi and dashboard Page ends here