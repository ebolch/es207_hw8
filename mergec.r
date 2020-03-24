#function combines a vector of strings into a series with punctuation
mergec <- function(x, delim = ",") { 
  n <- length(x)
  if (n == 0) {
    ""
  } else if (n == 1) {
    x
  } else if (n == 2) {
    # no comma before and when n == 2
    str_c(x[[1]], "and", x[[2]], sep = " ")
  } else {
    # commas after all n - 1 elements
    not_last <- str_c(x[seq_len(n - 1)], delim)
    # prepend "and" to the last element
    last <- str_c("and", x[[n]], sep = " ")
    # combine parts with spaces
    str_c(c(not_last, last), collapse = " ")
  }
}