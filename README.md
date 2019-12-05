
# nter

<!-- badges: start -->
<!-- badges: end -->

Trigger shiny action button with the <kbd>C-return</kbd> key.

## Example

Use `nter` in your Shiny UI in to which you pass the id of the button to be triggered.

``` r
library(nter)
library(shiny)

ui <- fluidPage(
  textInput("text", ""),
  actionButton("send", "Don't click hit enter"),
  nter("send"),
  verbatimTextOutput("typed")
)

server <- function(input, output) {
  
  txt <- eventReactive(input$send, {
    input$text
  })


  output$typed <- renderPrint(txt())
}

shinyApp(ui, server)

```

### Get It

``` r
install.packages("remotes")
remotes::install_github("JohnCoene/nter")
```
