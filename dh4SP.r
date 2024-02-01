# Install and load ggplot2 package
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Your data
sales_data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

# Scatter Plot
scatter_plot <- ggplot(sales_data, aes(x = Month, y = Sales)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "Month", y = "Sales (in $)") +
  theme_minimal()
# Print or display the plots
print(scatter_plot)
