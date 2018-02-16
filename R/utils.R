#' @importFrom magrittr '%>%'
#' @import Rcpp
#' @useDynLib vtools

freq_hour <- function(vec) {
  sec_interval <- mean(diff(as.integer(vec)))
  sec_interval / 3600
}
