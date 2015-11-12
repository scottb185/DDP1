
## This is shiny project file 1 of 2: the ui file (for user interface), 
## which controls how it looks 


shinyUI(pageWithSidebar( 
headerPanel("Monthly Payment per $100K Borrowed for 30-Year, Fixed-Rate Mortgage by Interest Rate"), 
sidebarPanel( 
numericInput('rate', 'Enter annual interest rate (%):', 3.75, min=0.01), 
submitButton('Submit') 
), 
mainPanel( 
h3('Results of Analysis'), 
h4('The annual interest rate (%) you entered:'),
verbatimTextOutput("inputValue"),
h4('Which results in a monthly payment per $100K principal borrowed of:'), 
verbatimTextOutput("payment")
) 
)
)





