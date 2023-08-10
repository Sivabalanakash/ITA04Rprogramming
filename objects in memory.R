
x <- 1:100
y <- "Hello, World!"
z <- matrix(1:9, nrow = 3)

objects <- ls()

for (object in objects) {
  size <- object.size(get(object))  
  cat("Object name:", object, "\n")
  cat("Size:", size, "bytes\n")
  cat("----------------\n")
}
