library(ggplot2)
library(tidyverse)

alz_data <- read.csv("data/alzheimers_disease_data.csv")

# Histogram of Age
ggplot(alz_data, aes(x=Age)) +
  geom_histogram(binwidth=5, fill="skyblue", color="black") +
  theme_minimal()
ggsave("outputs/histograms/age_histogram.png")

# Boxplot: BMI by Gender
ggplot(alz_data, aes(x=factor(Gender), y=BMI)) +
  geom_boxplot(fill="lightgreen") +
  theme_minimal()
ggsave("outputs/boxplots/bmi_gender_boxplot.png")
