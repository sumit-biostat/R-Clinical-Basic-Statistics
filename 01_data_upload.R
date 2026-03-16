# Load libraries
library(tidyverse)

# Load dataset
alz_data <- read.csv("data/alzheimers_disease_data.csv")

# Check structure
str(alz_data)
summary(alz_data)

# Save clean data if needed
write.csv(alz_data, "data/alzheimers_clean.csv", row.names = FALSE)
