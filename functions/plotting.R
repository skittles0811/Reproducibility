plot_culmen_figure <- function(culmen_data){
  culmen_data %>%
    ggplot(aes(x = body_mass_g,
               y = culmen_length_mm)) + #Lines 116-119 create a scatter plot for my filtered data on each axis (using the ggplot2 package)
  geom_point() + #This code adds the points to the plot
  labs(x = 'Body mass / g',
       y = 'Culmen length / mm') #Lines 121 and 112 label my axis with my chosen names 
}

plot_culmen_lm <- function(culmen_data){
  culmen_data %>%
    ggplot(aes(x = body_mass_g,
               y = culmen_length_mm, 
           )) + 
    geom_point() + 
    geom_smooth(method = "lm", se = FALSE, color = "red") +
    labs(x = 'Body mass / g',
         y = 'Culmen length / mm') +
    ggtitle("Linear Regression of Body Mass and Culmen Length:") #Lines 141-149 in the code create a figure similar to the exploratory one but with the linear regression line (in red) added which was calculated from the statistical test performed 
}
  
  

