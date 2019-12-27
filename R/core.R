#' nter
#' 
#' Allow button to be triggered by enter key.
#' 
#' @param id Id of button.
#' @param input Active input that triggers, useful if you have 
#' more than one button triggered by an enter key.
#' 
#' @import shiny 
#' @export
nter <- function(id, input = "window") {

  input <- if(!is.null(input)){
    input <- paste0("document.getElementById('", input, "')")
  } 

  tags$script(
    paste0(
      input, '.addEventListener("keyup", function(event) {
        if (event.keyCode === 13) {
          document.getElementById("', id, '").click();
        }
      });'
    )
  )
}
