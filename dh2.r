library(ggplot2)

# Define the product inventory as a data frame
products <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)

# Define the Solution class
Solution <- function(products) {
  this <- list()
  this$products <- products
  this$product_ids <- products$Product_ID
  this$product_quantities <- products$Quantity_Available
  this$product_names <- products$Product_Name
  this$maximumSum <- function() {
    max_sum <- sum(this$product_quantities)
    
    # Stacked Bar Chart
    ggplot(products, aes(x = Product_ID, y = Quantity_Available, fill = Product_Name)) +
      geom_bar(stat = "identity") +
      labs(x = "Product ID", y = "Quantity Available", title = "Stacked Bar Chart")
    
    # Line Plot
    ggplot(products, aes(x = Product_ID, y = Quantity_Available, color = Product_Name)) +
      geom_line() +
      labs(x = "Product ID", y = "Quantity Available", title = "Line Plot")
    
    # Scatter Plot
    ggplot(products, aes(x = Product_ID, y = Quantity_Available, color = Product_Name)) +
      geom_point() +
      labs(x = "Product ID", y = "Quantity Available", title = "Scatter Plot")
    
    # Pie Plot
    ggplot(products, aes(x = "", y = Quantity_Available, fill = Product_Name)) +
      geom_bar(stat = "identity", width = 1) +
      coord_polar("y", start = 0) +
      labs(x = "", y = "", title = "Pie Plot")
    
    # Histogram
    ggplot(products, aes(x = Quantity_Available)) +
      geom_histogram(binwidth = 50, fill = "blue", color = "black") +
      labs(x = "Quantity Available", y = "Frequency", title = "Histogram")
    
    return(max_sum)
  }
  return(this)
}

# Example usage
solution <- Solution(products)
max_sum <- solution$maximumSum()
print(paste("Maximum Sum: ", max_sum))