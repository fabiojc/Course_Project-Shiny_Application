library(shiny)
shinyUI(pageWithSidebar(  
        headerPanel("Course Project - Difference between two dates"),  
        sidebarPanel(
                h3("Please define two dates..."),
                dateInput("beginDate", "First Date:", min="0001-01-01", max="2999-12-31", format="yyyy-mm-dd"),
                dateInput("endDate", "Second Date:", min="0001-01-01", max="2999-12-31", format="yyyy-mm-dd"),
                radioButtons("timeUnit",label=h3("... and the unit of time to be used."),choices = list("Weeks" = "1", "Days" = "2", "Hours" = "3", "Minutes" = "4"),selected = 1),
                actionButton("do", "Calculate")
        ), 
        mainPanel(    
                h2("This is the result:"),
                
                verbatimTextOutput("outputText")
                
        )
))