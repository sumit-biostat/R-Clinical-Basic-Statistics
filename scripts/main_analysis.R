# Main Analysis Script for Alzheimer's Disease Dataset

# Load necessary libraries
library(ggplot2)  # For data visualization
library(dplyr)    # For data manipulation
library(tidyr)    # For data cleaning
library(readr)     # For reading data
library(stats)     # For statistical functions

# Load the dataset
# Assuming the dataset file is named 'alzheimer_data.csv' and located in the 'data' folder.
data <- read_csv('data/alzheimer_data.csv')

# Display the first few rows of the dataset
display(head(data))

# Descriptive Statistics
## Summary of the dataset
summary_stats <- summary(data)
print(summary_stats)

# Frequency Analysis
## Check for categorical variables
categorical_vars <- sapply(data, is.factor)

# Frequency table for categorical variables
for (var in names(data)[categorical_vars]) {
    print(paste('Frequency analysis for:', var))
    print(table(data[[var]]))
}

# Hypothesis Testing
## Example: T-test to compare two groups
# Assuming there's a variable 'group' and a numeric outcome variable 'score'
# H0: Mean score of Group A = Mean score of Group B
t.test_results <- t.test(score ~ group, data = data)
print(t.test_results)

# Visualizations
## Histogram of scores
ggplot(data, aes(x = score)) +
  geom_histogram(binwidth = 1, fill = 'blue', alpha = 0.7) +
  labs(title = 'Histogram of Scores', x = 'Score', y = 'Frequency') +
  theme_minimal()

## Boxplot by group
ggplot(data, aes(x = group, y = score)) +
  geom_boxplot(fill = 'orange') +
  labs(title = 'Boxplot of Scores by Group', x = 'Group', y = 'Score') +
  theme_minimal()

# Clinical Summary Report
## Generating a clinical summary
clinical_summary <- data %>% 
  group_by(group) %>% 
  summarise(
    Mean_Score = mean(score, na.rm = TRUE),
    SD_Score = sd(score, na.rm = TRUE),
    N = n()
  )
print(clinical_summary)