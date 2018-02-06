fill_na_ts <- function(df){
  require(xts)
  require(dplyr)
  new_ts <- xts(x = df[, 2:(length(colnames(df)))], order.by = df[[1]])
  filled_ts <- new_ts %>%
    na.approx() %>%
    na.locf() %>%
    na.locf(fromLast = TRUE)
  new_df <- data.frame(datetime=index(filled_ts), coredata(filled_ts))
  return(new_df)
}
