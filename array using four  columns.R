# Given data
columns <- 4
rows <- 3
tables <- 2

# Create the array using random data
my_array <- array(data = 1:(columns * rows * tables), dim = c(rows, columns, tables))

# Display the content of the array
print(my_array)
