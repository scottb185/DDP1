
## This is shiny project file 2 of 2: the server file,  
## which controls what it does.   

monthly <- function(rate) 100000*((rate/1200)*((rate/1200+1)^360))/(((rate/1200+1)^360)-1) 

library(shiny) 
library(UsingR) 

shinyServer( 
function(input, output) { 
output$inputValue <- renderPrint({input$rate}) 
output$payment <- renderPrint({monthly(input$rate)})
#output$payment2 <-round(output$payment,digits=2)
          
}
) 

