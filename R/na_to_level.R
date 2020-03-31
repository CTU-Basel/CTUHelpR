#' This functions replaces all NA's in a factor to a level with specified name.
#'
#' @param x a factor
#' @param name character - the name of the new level (default: N/A)
#' @return The same factor with renamed NA
#' @export
#' @examples
#' na_to_level(factor(c("a","b", "b", NA))) # Levels: a b N/A
na_to_level <- function(x, name = "N/A") {
  assertthat::assert_that(is.factor(x))
  
  if(!(name %in% levels(x))) {
    x <- factor(x, levels = c(levels(x), name))
  }
  x[is.na(x)] <- name
  
  return(x)
}
