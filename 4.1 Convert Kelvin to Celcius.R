kelvin_to_celsius <- function(kelvin) {
  celsius <- kelvin - 273.15
  return(celsius)
}

# Example usage
kelvin_temp <- 300
celsius_temp <- kelvin_to_celsius(kelvin_temp)

# Printing the result
print(celsius_temp)
