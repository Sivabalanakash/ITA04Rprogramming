# Function to get unique elements from a string
get_unique_elements_string <- function(input_string) {
  unique_elements <- unique(strsplit(input_string, "")[[1]])
  return(unique_elements)
}

# Function to get unique numbers from a vector
get_unique_numbers_vector <- function(input_vector) {
  unique_numbers <- unique(input_vector)
  return(unique_numbers)
}

# Example string and vector
example_string <- "hello"
example_vector <- c(3, 7, 2, 3, 9, 7, 2, 5, 9)

# Get unique elements from the string
unique_elements_string <- get_unique_elements_string(example_string)

# Get unique numbers from the vector
unique_numbers_vector <- get_unique_numbers_vector(example_vector)

# Display the results
cat("Unique elements from the string:", unique_elements_string, "\n")
cat("Unique numbers from the vector:", unique_numbers_vector)
