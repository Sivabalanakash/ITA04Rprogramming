# Function to find all prime numbers up to a given limit using the Sieve of Eratosthenes
sieve_of_eratosthenes <- function(limit) {
  prime <- rep(TRUE, limit + 1)
  prime[1] <- FALSE  # 1 is not a prime number
  
  p <- 2
  while (p^2 <= limit) {
    if (prime[p]) {
      for (i in (p^2):(limit + 1) - 1 step p) {
        prime[i] <- FALSE
      }
    }
    p <- p + 1
  }
  
  primes <- which(prime)
  return(primes)
}

# Get user input for the limit
limit <- as.integer(readline("Enter a number to find prime numbers up to: "))

# Find prime numbers using the Sieve of Eratosthenes
prime_numbers <- sieve_of_eratosthenes(limit)

# Display the prime numbers
cat("Prime numbers up to", limit, ":", prime_numbers, "\n")
