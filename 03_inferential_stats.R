library(tidyverse)

alz_data <- read.csv("data/alzheimers_disease_data.csv")

# Example t-test: Age difference between Diagnosis groups
t.test(Age ~ Diagnosis, data = alz_data)

# Chi-square: Gender vs Diagnosis
table_gender <- table(alz_data$Gender, alz_data$Diagnosis)
chisq.test(table_gender)

# ANOVA: BMI across EducationLevel
anova_result <- aov(BMI ~ as.factor(EducationLevel), data = alz_data)
summary(anova_result)
