# Descriptive Statistics Functions

## Function to calculate mean
mean_function <- function(x) {
  return(mean(x, na.rm = TRUE))
}

## Function to calculate median
median_function <- function(x) {
  return(median(x, na.rm = TRUE))
}

## Function to calculate standard deviation
sd_function <- function(x) {
  return(sd(x, na.rm = TRUE))
}

## Function to calculate quartiles
quartiles_function <- function(x) {
  return(quantile(x, na.rm = TRUE))
}

## Function for summary statistics
summary_statistics <- function(x) {
  return(summary(x))
}
