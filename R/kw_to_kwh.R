# kw to kwh



#' @export
kw_to_kwh <- function(df) {
  stopifnot(inherits(df[[1]], "POSIXt"))
  f <- freq_hour(df[[1]])
  cbind(
    df[1],
    apply(df[2:length(df)], 2, function(x){x * f})
  )
}

#' @export
kwh_to_kw <- function(df) {
  stopifnot(inherits(df[[1]], "POSIXt"))
  f <- freq_hour(df[[1]])
  cbind(
    df[1],
    apply(df[2:length(df)], 2, function(x){x / f})
  )
}
