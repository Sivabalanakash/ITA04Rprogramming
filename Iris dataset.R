# Load the built-in data set 'iris'
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features.
print("Dimension of the datas
      et:")
print(dim(iris))

print("Structure of the dataset:")
str(iris)

print("Summary statistics of the dataset:")
summary(iris)

print("Standard Deviation of all features:")
sapply(iris[, 1:4], sd)

# (ii) Find mean and standard deviation of features grouped by species
aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = function(x) c(mean = mean(x), sd = sd(x)))

# (iii) Find quantile value of sepal width and length
quantile(iris$Sepal.Width)
quantile(iris$Sepal.Length)

# (iv) Create a new data frame named iris1 with a new column 'Sepal.Length.Cate' that categorizes Sepal.Length by quantile
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length))
table(iris1$Sepal.Length.Cate)

# (v) Average value of numerical variables by Species and Sepal.Length.Cate
aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = mean)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = function(x) mean(x, na.rm = TRUE))

# (vii) Create a Pivot Table based on Species and Sepal.Length.Cate
library(dplyr)
pivot_table <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise_all(mean)

print("Pivot Table based on Species and Sepal.Length.Cate:")
print(pivot_table)
