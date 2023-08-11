# Create a random sample of LETTERS
set.seed(123)  # Set seed for reproducibility
random_letters <- sample(LETTERS, size = 10, replace = TRUE)

# Create a factor from the random sample
random_factor <- factor(random_letters)

# Extract the first five levels from the factor
first_five_levels <- levels(random_factor)[1:5]

# Display the random sample, factor, and extracted levels
print("Random sample of LETTERS:")
print(random_letters)
print("Factor:")
print(random_factor)
print("First five levels:")
print(first_five_levels)
