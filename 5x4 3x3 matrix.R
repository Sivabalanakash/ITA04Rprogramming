matrix_5x4 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)

matrix_3x3 <- matrix(11:19, nrow = 3, ncol = 3)
rownames(matrix_3x3) <- c("Row 1", "Row 2", "Row 3")
colnames(matrix_3x3) <- c("Col A", "Col B", "Col C")


matrix_2x2 <- matrix(c(2, 4, 6, 8), nrow = 2, ncol = 2, byrow = FALSE)
rownames(matrix_2x2) <- c("Row X", "Row Y")
colnames(matrix_2x2) <- c("Col P", "Col Q")

cat("5x4 Matrix:\n")
print(matrix_5x4)


cat("\n3x3 Matrix:\n")
print(matrix_3x3)

cat("\n2x2 Matrix:\n")
print(matrix_2x2)
