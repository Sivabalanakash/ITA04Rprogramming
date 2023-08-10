find_factors <- function(number) {
  factors <- c()
  for (i in 1:number) {
    if (number %% i == 0) {
      factors <- c(factors, i)
    }
  }
  return(factors)
}
input_number <- 36
factors_list <- find_factors(input_number)
cat("Factors of", input_number, "are:", factors_list)