library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
        output$newBoxplot <- renderPlot({
                feedType <- input$feedType
                ggplot(chickwts[chickwts$feed %in% feedType,], aes(x=feed, y=weight, color = feed)) +
                        geom_boxplot() +
                        geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5) +
                        xlab("Feed Type") + ylab("Weight (grams)")
        })
        
})

