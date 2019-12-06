#' nter
#' 
#' Allow button to be triggered by enter key.
#' 
#' @param id Id of button.
#' @param input Active input that triggers, useful if you have 
#' more than one button triggered by an enter key.
#' @param key The key that triggers the button, defaults to \code{keyup}
#' which is the enter key.
#' 
#' @import shiny 
#' @export
nter <- function(id, input = "window", key = "keyup") {

  input <- if(!is.null(input)){
    input <- paste0("document.getElementById('", input, "')")
  } 

  tags$script(
    paste0(
      input, '.addEventListener("', key, '", function(event) {
        if (event.keyCode === 13) {
          document.getElementById("', id, '").click();
        }
      });'
    )
  )
}
