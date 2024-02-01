# Load required libraries
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
