# Load necessary libraries
library(caTools)
library(dplyr)
library(caret)

# Load the built-in dataset 'iris'
data(iris)

# Set the seed for reproducibility
set.seed(123)

# Split the data into training (80%) and test (20%) sets
split <- sample.split(iris$Species, SplitRatio = 0.8)
train_data <- iris[split, ]
test_data <- iris[!split, ]

# Create a logistic regression model using train data
logreg_model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = "binomial")

# Predict the probabilities using test data
test_probs <- predict(logreg_model, newdata = test_data, type = "response")

# Create Confusion Matrix
test_pred <- ifelse(test_probs > 0.5, "versicolor", "setosa")
conf_matrix <- confusionMatrix(factor(test_pred), test_data$Species)

# Display the confusion matrix
print(conf_matrix)
