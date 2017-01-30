#' Testme
#'
#' @return a bootstrapped value
#' @export
#' @import data.table boot
testme <- function(random_seed = 42){
  set.seed(random_seed)

  combined_data <- data.table(a = seq(100), b = seq(100),
    strat = as.factor(c(rep("a", 50), rep("b", 50))))

  # Then create a function that unwraps the data.table
  # and feeds it into the original function

  wrapper_function <- function(dt, i){
    return(1)
  }

  f2_boot <- boot::boot(
    data = combined_data,
    statistic = wrapper_function,
    R = 200L,
    strata = combined_data$strat)

  return(f2_boot)
}
