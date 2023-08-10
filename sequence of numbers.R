
sequence <- 20:50

mean_20_to_60 <- mean(sequence[sequence >= 20 & sequence <= 60])


sequence_51_to_91 <- 51:91

sum_51_to_91 <- sum(sequence_51_to_91)


cat("Sequence of numbers from 20 to 50:", sequence, "\n")
cat("Mean of numbers from 20 to 60:", mean_20_to_60, "\n")
cat("Sum of numbers from 51 to 91:", sum_51_to_91, "\n")
