#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

  # Application title
  titlePanel("Vslyzr - Visualizing Variants"),

  # Sidebar for inputs
  sidebarLayout(
    sidebarPanel(

      fileInput('var', 'Choose any variant data file', accept=c('.rdata'))
    ),

    # Show a plot of the variants
    mainPanel(
      plotOutput(outputId = "distPlot")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$distPlot <- renderPlot({
    chrom <- create.chromR('sc50', seq=dna, vcf=vcf, ann=gff)
    chrom <- masker(chrom)
    elems <- extract.gt(chrom, element="GQ", as.numeric=TRUE)
    varbarplot(elems)

  })
}

# Run the application
shinyApp(ui = ui, server = server)
