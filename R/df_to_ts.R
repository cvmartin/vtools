df_to_ts <- function(df) {
  require(xts)
  new_ts <- xts(x = df[, 2:(length(colnames(df)))], order.by = df[[1]])
  if (is.null(colnames(new_ts))) colnames(new_ts) <- colnames(df[2])
  return(new_ts)
}
