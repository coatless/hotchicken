#' Replace Values not coded with NA
#'
#' Modifies the data by searching for what the researcher specified as
#' the missing value and substitutes _R_'s missing data type `NA`.
#'
#' @param x     Vector of Data
#' @param value Used when replacing observation with a missing entry.
#'              Default is `-1`.
#'
#' @return
#' A `vector` with missing values appropriately coded.
#'
#' @author
#' James Joseph Balamuta
#'
#' @export
#' @examples
#' # Data
#' x = c(1, 2, -1, 4)
#'
#' # Replace -1 with NA
#' y = code_missing(x)
#'
#' # Replace 4 with NA
#' y = code_missing(x, value = 4)
code_missing = function(x, value = -1) {
  x[x == value] = NA
  x
}
