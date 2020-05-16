#' compte_NA
#' compte le nombre total de NA et le nombre de NA par variable
#'
#' @param df datagrame
#'
#' @return liste
#' @export
#'
#' @examples
#' toto <- data.frame(var1 = 1:4, var2 = c("a", "b", NA, "d"), var3 = c(NA, NA, TRUE, FALSE))
#' compte_NA(toto)
compte_NA <- function(df) {

  tmp <- is.na(df)

  nb1 <- sum(tmp)
  nb2 <- apply(tmp, 2, sum)

  return(list(nb1, nb2))

}
