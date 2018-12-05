# runVslyzrApp.R

#' \code{runvslyzrApp} launches the shiny app for which the code has been placed in  \code{./inst/shiny-scripts/vslyzrApp/}.
#' @export

runHiCVizApp <- function() {
  appDir <- system.file("shiny-scripts", "vslyzrApp", package = "vslyzr")
  shiny::runApp(appDir, display.mode = "normal")
  return()
}

# [END]
