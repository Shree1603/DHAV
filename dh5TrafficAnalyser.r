# Install and load ggplot2 package
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}
library(ggplot2)

# Your data
web_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Scatter Plot
scatter_plot <- ggplot(web_data, aes(x = Date, y = Page_Views)) +
  geom_point() +
  labs(title = "Scatter Plot of Page Views", x = "Date", y = "Page Views") +
  theme_minimal()

# Line Graph
line_graph <- ggplot(web_data, aes(x = Date, y = Page_Views, group = 1)) +
  geom_line() +
  labs(title = "Line Graph of Page Views", x = "Date", y = "Page Views") +
  theme_minimal()

# Bar Chart
bar_chart <- ggplot(web_data, aes(x = Date, y = Page_Views)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Bar Chart of Page Views", x = "Date", y = "Page Views") +
  theme_minimal()

# Pie Chart
pie_chart <- ggplot(web_data, aes(x = "", y = Page_Views, fill = factor(Date))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Pie Chart of Page Views") +
  theme_minimal()

# Histogram
histogram <- ggplot(web_data, aes(x = Page_Views)) +
  geom_histogram(binwidth = 100, fill = "lightgreen", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Page Views", x = "Page Views", y = "Frequency") +
  theme_minimal()

# Boxplot (Click-through Rate)
boxplot <- ggplot(web_data, aes(x = factor(Date), y = Click_through_Rate)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Boxplot of Click-through Rate", x = "Date", y = "Click-through Rate") +
  theme_minimal()

# Display the plots
print(scatter_plot)
print(line_graph)
print(bar_chart)
print(pie_chart)
print(histogram)
print(boxplot)
