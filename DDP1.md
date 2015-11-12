Monthly Payment per $100K Borrowed for 30-Year, Fixed-Rate Mortgage by Interest Rate
======================================================== 
author: scottb185 

date: 11/15/15 
 

Introduction 
======================================================== 
 
This is a calculator which tells you your required monthly payment per $100K borrowed for a 30-Year, fixed-rate mortgage by interest rate.


Governing Equation 
======================================================== 
 
M = monthly mortgage payment

P = the principal (the initial amount you borrowed)

i = the MONTHLY interest rate

n = # of payments, n=360 for 30 year mortgage 

M = P[i(1+i)^n ] / [(1+i)^n -1]
 
Disclaimer: results are for this excercise only; I am not a finance person        



Calculation 
======================================================== 
 

Calculates the monthly payment based on interest rate entered by the user 
<small> 

```r
monthly <- function(rate) 100000*((rate/1200)*((rate/1200+1)^360))/(((rate/1200+1)^360)-1)
```
</small> 


Shiny-ui.R 
======================================================== 
<small> 

```r
library(shiny)
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
```

<!--html_preserve--><div class="container-fluid">
<div class="row">
<div class="col-sm-12">
<h1>Monthly Payment per $100K Borrowed for 30-Year, Fixed-Rate Mortgage by Interest Rate</h1>
</div>
</div>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label for="rate">Enter annual interest rate (%):</label>
<input id="rate" type="number" class="form-control" value="3.75" min="0.01"/>
</div>
<div>
<button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
</div>
<div class="col-sm-8">
<h3>Results of Analysis</h3>
<h4>The annual interest rate (%) you entered:</h4>
<pre id="inputValue" class="shiny-text-output"></pre>
<h4>Which results in a monthly payment per $100K principal borrowed of:</h4>
<pre id="payment" class="shiny-text-output"></pre>
</div>
</div>
</div><!--/html_preserve-->
</small> 
        
