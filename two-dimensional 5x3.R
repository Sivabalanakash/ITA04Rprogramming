
num_rows <- 5
num_cols <- 3
start_number <- 52 

even_sequence <- seq(start_number, length.out = num_rows * num_cols, by = 2)


even_array <- matrix(even_sequence, nrow = num_rows, ncol = num_cols, byrow = TRUE)


print(even_array)
