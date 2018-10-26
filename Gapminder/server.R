
library(ggplot2) 
library(dplyr) 
library(plotly)
library(gapminder)
library(shiny)


server <- function(input, output) {
  
  output$plot <- renderPlot({ 
    p1 <- ggplot(gapminder %>% filter(year==input$year), aes(y=lifeExp, x=gdpPercap, color=continent,size=pop))
    p1 + geom_point() +
      scale_size(name = "Pop Size") + scale_color_discrete(name = "Continent")
    
  })
}