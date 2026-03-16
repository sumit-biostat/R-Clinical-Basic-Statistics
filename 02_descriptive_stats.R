library(tidyverse)

alz_data <- read.csv("data/alzheimers_disease_data.csv")

# Numeric summaries
num_vars <- c("Age","BMI","AlcoholConsumption","PhysicalAc","DietQuality","SleepQuali",
              "SystolicBP","DiastolicBP","CholesterolTotal","CholesterolLDL",
              "CholesterolHDL","CholesterolTriglycerides","MMSE","FunctionalAssessment")
summary(alz_data[num_vars])
sapply(alz_data[num_vars], sd, na.rm = TRUE)  # SD

# Frequency tables for categorical
cat_vars <- c("Gender","Ethnicity","EducationLevel","Smoking","FamilyHistoryAlzheimers",
              "Cardiovas","Diabetes","Depression","HeadInjury","Hypertension","Diagnosis")
for(v in cat_vars){
  print(table(alz_data[[v]]))
  print(prop.table(table(alz_data[[v]])))
}
