## ----------------------------------------------------------------------
## SUMMARY FUNCTIONS
## ----------------------------------------------------------------------

#' Wrapped functions for summary statitics with \code{na.rm=TRUE}.
#'
#' These functions are wrappers enabling \code{na.rm=TRUE} for the following
#' functions: sum, mean, sd, median, min, max, lower and upper quantile, number of NA. The wrapped functions start
#' with a capital letter (e.g. \code{Sum} for \code{sum}). These function may
#' be used in the \code{tabular} function of the \code{tables}-package.
#'
#' Note: Iqr() compared to all other functions need to be called including parenthesis
#' to work properly due to its different implementation.
#'
#' @param x numeric vector
#' @param ... arguments for Iqr
#' @return Return value of the corresponding function.
#' @export
Sum <- function(x) base::sum(x, na.rm = TRUE)
#' @rdname Sum
#' @export
Median <- function(x)  stats::median(x, na.rm = TRUE)
#' @rdname Sum
## TODO: Mean is masked by Hmisc::Mean if someR is loaded before tables/Hmisc
## use Average as name
#' @export
Average <- function(x) base::mean(x, na.rm = TRUE)
#' @rdname Sum
#' @export
Sd <- function(x) stats::sd(x, na.rm = TRUE)
#' @rdname Sum
#' @export
Min <- function(x) base::min(x, na.rm = TRUE)
#' @rdname Sum
#' @export
Max <- function(x) base::max(x, na.rm = TRUE)
#' @rdname Sum
# quantiles: type = 7 (default of quantiles())
#' @export
Q1 <- function(x){stats::quantile(x, 0.25, na.rm = TRUE)}
#' @rdname Sum
#' @export
Q3 <- function(x){stats::quantile(x, 0.75, na.rm = TRUE)}
#' @rdname Sum
#' @export
Nr.na <- function(x){sum(is.na(x))}
#' @rdname Sum
#' @export
Iqr <- function(x, ...) {
  if (!requireNamespace("tables", quietly = TRUE)) {
    return(paste(sprintf("%.1f", as.numeric(stats::quantile(x, na.rm = TRUE)[2])), " - ", sprintf("%.1f", as.numeric(stats::quantile(x, na.rm = TRUE)[4])), sep =""))
    ##stop("Pkg 'tables' needed for this function to work. Please install it.",
    ##  call. = FALSE)
  }
  tables::Paste(Q1, Q3, digits = 1, head = "IQR", sep = ",", prefix = "[",
                postfix = "]")
}