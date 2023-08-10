generate_fibonacci <- function(n) {
  fibonacci <- numeric(n)
  if (n >= 1) {
    fibonacci[1] <- 0
  }
  if (n >= 2) {
    fibonacci[2] <- 1
  }
  for (i in 3:n) {
    fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
  }
  return(fibonacci)
}
n <- 10
fibonacci_sequence <- generate_fibonacci(n)
cat("First", n, "Fibonacci numbers:", fibonacci_sequence, "\n")
