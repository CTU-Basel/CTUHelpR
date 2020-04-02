#' This function is a wrapper enabling \code{na.rm=TRUE} for the sum function. This function may
#' be used in the \code{tabular} function of the \code{tables}-package.
#'
#' @param x numeric vector
#' @return Returns the sum of the input vector while disregarding NAs.
#' @export
Sum <- function(x) base::sum(x, na.rm = TRUE)
