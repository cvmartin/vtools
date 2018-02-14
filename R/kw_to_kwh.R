# kw to kwh

freq_hour <- function(vec) {
  sec_interval <- vec %>%
    as.integer() %>%
    diff() %>%
    mean()
  sec_interval / 3600
}


kw_to_kwh <- function(df) {
  stopifnot(is.POSIXt(df[[1]]))
  f <- freq_hour(df[[1]])
  cbind(
    df[1],
    apply(df[2:length(df)], 2, function(x){x * f})
  )
}

kwh_to_kw <- function(df) {
  stopifnot(is.POSIXt(df[[1]]))
  f <- freq_hour(df[[1]])
  cbind(
    df[1],
    apply(df[2:length(df)], 2, function(x){x / f})
  )
}
