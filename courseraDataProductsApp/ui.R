library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Plot of chick weights by feed type"),
        sidebarPanel(
                checkboxGroupInput('feedType', "Select feed types to display",
                              c("Casein" = "casein",
                                "Horsebean" = "horsebean",
                                "Linseed" = "linseed",
                                "Meatmeal" = "meatmeal",
                                "Soybean" = "soybean",
                                "Sunflower" = "sunflower"))
        ),
        mainPanel(
                plotOutput('newBoxplot')
        )
))
