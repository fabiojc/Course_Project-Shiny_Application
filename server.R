library(shiny)

shinyServer(  
        function(input, output) {
                observeEvent(input$do, {
                        
                        if(input$timeUnit=="1") unit <- "weeks"
                        if(input$timeUnit=="2") unit <- "days"
                        if(input$timeUnit=="3") unit <- "hours"
                        if(input$timeUnit=="4") unit <- "mins"
                        
                        difference <- as.numeric(difftime(input$endDate, input$beginDate, units=unit))
                        
                        if(input$timeUnit=="1") unit <- "weeks."
                        if(input$timeUnit=="2") unit <- "days."
                        if(input$timeUnit=="3") unit <- "hours."
                        if(input$timeUnit=="4") unit <- "minutes."
                        
                        output$outputText <- renderText({ 
                                paste("The difference between", input$beginDate, "and", input$endDate, "is approximately", format(difference, nsmall=2), unit)})
                        
                })
        }
)