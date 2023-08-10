
num_samples <- 1000 
mean_value <- 0   
sd_value <- 1     

random_numbers <- rnorm(num_samples, mean = mean_value, sd = sd_value)


occurrences <- table(random_numbers)



cat("Value\tOccurrences\n")
for (value in names(occurrences)) {
  cat(value, "\t", occurrences[value], "\n")
}
