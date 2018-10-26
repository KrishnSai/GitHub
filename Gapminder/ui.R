ui <- fluidPage(
  
  # Application title 
  
  titlePanel("Gapminder App"),
  # Sidebar with a slider input for year 
  sidebarLayout( 
    sidebarPanel( 
      sliderInput("year", "Year:",
                  min = 1952, max = 2007,
                  value = 1952, step = 5,
                  animate = animationOptions(interval = 800)
      ) 
    ),
    
    mainPanel( plotOutput("plot"), 
               p('Krishna Sai Patha') )
    
  )
)