fill_na_ts <- function(df){
  new_ts <- xts::xts(x = df[, 2:(length(colnames(df)))], order.by = df[[1]])
  filled_ts <- new_ts %>%
    xts::na.approx() %>%
    xts::na.locf() %>%
    xts::na.locf(fromLast = TRUE)
  new_df <- data.frame(datetime = xts::index(filled_ts), xts::coredata(filled_ts))
  return(new_df)
}
