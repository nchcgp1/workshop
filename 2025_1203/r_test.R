setwd("~/")

##### Example data
set.seed(123)                                           # Set seed for reproducibility # nolint
data<- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)  # Create example data

# Apply heatmap function
colnames(data) <- paste0("col", 1:10)                   # Column names
rownames(data) <- paste0("row", 1:10)                   # Row names

## save PDF
heatmap(data)

## save jpg
jpeg(file = "./heatmap_test.jpg", height = 7, width = 12, units= "in", res =300)
heatmap(data)
dev.off()
