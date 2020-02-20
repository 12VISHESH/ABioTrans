shinyServer(function(input, output, session){
  
  
  
  output$first <- renderText("first")
    
  
  data <- read.csv("a.csv")
  
  output$boxplot <- renderPlot({
    boxplot(data)
  })
  

  

  output$third <- renderText("Third")
  output$fourth <- renderText("Fourth")
})