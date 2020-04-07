#' This function is a wrapper enabling \code{na.rm=TRUE} for the stats::median function. This function may
#' be used in the \code{tabular} function of the \code{tables}-package.
#'
#' @param x numeric vector
#' @return median of the input vector while disregarding NAs
#' @export
#' @examples
#' vec <- c(1, 2, 3, NA, NA, 4, 5)
#' Median(vec)
#' 
Median <- function(x)  {
  stats::median(x, na.rm=TRUE)
}