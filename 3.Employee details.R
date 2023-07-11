employee_data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  NAME = c("John", "Mary", "David", "Sarah", "Michael"),
  OCCUPATION = c("Manager", "Engineer", "Analyst", "Designer", "Technician"),
  EMPLOYEE = c("Full-Time", "Part-Time", "Full-Time", "Part-Time", "Full-Time"),
  stringsAsFactors = FALSE
)

# Print the structure of the data frame
print(str(employee_data))

# Apply summary() to obtain summary statistics
summary_data <- summary(employee_data)
print(summary_data)

# Extract the OCCUPATION column from the data frame
occupation_data <- employee_data$OCCUPATION
print(occupation_data)

# Expand the data frame to include SALARY column
employee_data$SALARY <- c(50000, 60000, 55000, 45000, 40000)
print(employee_data)
