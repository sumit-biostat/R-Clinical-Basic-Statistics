# Hypothesis Testing Functions

# independent t-test function
independent_t_test <- function(data1, data2) {
  t.test(data1, data2, var.equal = TRUE)
}

# paired t-test function
paired_t_test <- function(data1, data2) {
  t.test(data1, data2, paired = TRUE)
}

# ANOVA function
anova_test <- function(data, response, factor) {
  aov_result <- aov(as.formula(paste(response, "~", factor)), data = data)
  summary(aov_result)
}

# Tukey post-hoc test function
post_hoc_tukey <- function(anova_result) {
  TukeyHSD(anova_result)
}

# Bonferroni post-hoc test function
post_hoc_bonferroni <- function(anova_result) {
  pairwise.t.test(anova_result$residuals, p.adjust.method = "bonferroni")
}

# Mann-Whitney U test function
mann_whitney_test <- function(data1, data2) {
  wilcox.test(data1, data2)
}

# Kruskal-Wallis test function
kruskal_wallis_test <- function(data, response, factor) {
  kruskal.test(as.formula(paste(response, "~", factor)), data = data)
}

# Effect size calculation function
calculate_effect_size <- function(data1, data2) {
  cohen_d <- (mean(data1) - mean(data2)) / sqrt((var(data1) + var(data2)) / 2)
  return(cohen_d)
}