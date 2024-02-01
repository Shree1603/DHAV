install.packages("ggplot2")
library(ggplot2)

# Your data
data <- data.frame(
  Age = c("0-10", "11-30", "31-50", "51-80"),
  Dairy = c(50, 35, 25, 40),
  StapleFood = c(30, 45, 55, 40),
  HighCalorieFood = c(10, 15, 13, 4),
  Supplements = c(10, 5, 7, 16)
)

# Reshape data for ggplot2
data_long <- reshape2::melt(data, id.vars = "Age")
# Line Plot
ggplot(data_long, aes(x = Age, y = value, color = variable, group = variable)) +
  geom_line() +
  labs(title = "Line Plot", x = "Age", y = "Percentage") +
  theme_minimal()
