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
# Line Graph
line_graph <- ggplot(sales_data, aes(x = Month, y = Sales, group = 1)) +
  geom_line() +
  labs(title = "Line Graph", x = "Month", y = "Sales (in $)") +
  theme_minimal()

# Print or display the plots
print(line_graph)
