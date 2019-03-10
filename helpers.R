#' Calculate the number of bins by column
#' 
#' @param column numeric vector
#' @return integer vector
#'
getbins <- function(column) {
        seq(min(column), max(column), length.out = 30 + 1)
}
