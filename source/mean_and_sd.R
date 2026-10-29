#' mean_and_sd
#'
#' this functon computes the mean and sd of an input vector
#'
#' @param x input numeric vector
#'
#' @returns dataframe with mean and sd
#' 
mean_and_sd = function(x) {
  
  if (!is.numeric(x)) {
    stop("Argument x should be numeric")
  } else if (length(x) == 1) {
    stop("Z scores cannot be computed for length 1 vectors")
  }
  
  return_df = 
    tibble(
      mean = mean(x),
      sd = sd(x)
    )
  
  return(return_df)
  
}