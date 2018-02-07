#' Convert Data Frame to a Time Series object.
#'
#' This is a random description.
#'
#' These are random details. Will it work somehow?
#' I will know it soon.
#'
#' @param df Data frame where the first column is a POXIXct objet or convertible.
#'
#' @return Time series indexed by the first column of df.



df_to_ts <- function(df) {
  require(xts)
  new_ts <- xts(x = df[, 2:(length(colnames(df)))], order.by = df[[1]])
  if (is.null(colnames(new_ts))) colnames(new_ts) <- colnames(df[2])
  return(new_ts)
}
