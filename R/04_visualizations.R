# Visualization Functions in R using ggplot2

# Function to create a histogram  
histogram_plot <- function(data, x_var, title = 'Histogram', x_label = x_var) {  
  ggplot(data, aes_string(x = x_var)) +  
    geom_histogram(binwidth = 1, fill = 'blue', color = 'black') +  
    labs(title = title, x = x_label) +  
    theme_minimal()  
}

# Function to create a boxplot  
boxplot_plot <- function(data, x_var, y_var, title = 'Boxplot', x_label = x_var, y_label = y_var) {  
  ggplot(data, aes_string(x = x_var, y = y_var)) +  
    geom_boxplot(fill = 'lightgreen') +  
    labs(title = title, x = x_label, y = y_label) +  
    theme_minimal()  
}

# Function to create a scatter plot  
scatter_plot <- function(data, x_var, y_var, title = 'Scatter Plot', x_label = x_var, y_label = y_var) {  
  ggplot(data, aes_string(x = x_var, y = y_var)) +  
    geom_point(color = 'red') +  
    labs(title = title, x = x_label, y = y_label) +  
    theme_minimal()  
}

# Function to create a bar plot  
bar_plot <- function(data, x_var, title = 'Bar Plot', x_label = x_var) {  
  ggplot(data, aes_string(x = x_var)) +  
    geom_bar(fill = 'purple') +  
    labs(title = title, x = x_label) +  
    theme_minimal()  
}

# Function to create a Q-Q plot  
qq_plot <- function(data, var_name) {  
  ggplot(data, aes(sample = data[[var_name]])) +  
    stat_qq() + stat_qq_line() +  
    labs(title = 'Q-Q Plot', x = 'Theoretical Quantiles', y = 'Sample Quantiles') +  
    theme_minimal()  
}

# Function to create a correlation heatmap  
correlation_heatmap <- function(data) {  
  library(reshape2)  
  library(corrplot) 
  corr <- cor(data, use = 'complete.obs')  
  melted_corr <- melt(corr)  
  ggplot(melted_corr, aes(Var1, Var2, fill = value)) +  
    geom_tile() +  
    scale_fill_gradient2(low = 'blue', high = 'red', mid = 'white',  
                         limit = c(-1,1), name='Correlation') +  
    theme_minimal() +  
    labs(title = 'Correlation Heatmap') +  
    theme(axis.text.x = element_text(angle = 45, hjust = 1))  
}
