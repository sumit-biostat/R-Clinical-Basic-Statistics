# Frequency Analysis Functions

# Function to create frequency tables
create_frequency_table <- function(data, variable) {
  freq_table <- table(data[[variable]])
  return(freq_table)
}

# Function to calculate proportions
calculate_proportions <- function(freq_table) {
  proportions <- prop.table(freq_table)
  return(proportions)
}

# Function to calculate percentages
calculate_percentages <- function(freq_table) {
  percentages <- prop.table(freq_table) * 100
  return(percentages)
}

# Function for cross-tabulation
create_crosstab <- function(data, var1, var2) {
  crosstab <- table(data[[var1]], data[[var2]])
  return(crosstab)
}

# Function for Chi-square test for independence
chi_square_test <- function(crosstab) {
  test_result <- chisq.test(crosstab)
  return(test_result)
}

# Function for Fisher's exact test
fisher_exact_test <- function(crosstab) {
  test_result <- fisher.test(crosstab)
  return(test_result)
}