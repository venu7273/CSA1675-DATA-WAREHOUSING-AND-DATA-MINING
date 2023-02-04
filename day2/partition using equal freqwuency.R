# Load the necessary libraries
library(ggplot2)

# Define the data
data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)

# Define the number of bins
num_bins <- 3

# Calculate the range of the data
data_range <- max(data) - min(data)

# Calculate the bin width
bin_width <- data_range / num_bins

# Create an empty list to store the bins
bins <- numeric(num_bins)

# Create the bins by dividing the data range into equal intervals
for (i in 1:num_bins) {
  bin_start <- min(data) + (i - 1) * bin_width
  bin_end <- bin_start + bin_width
  bins[i] <- bin_end
}

# Assign each data point to its corresponding bin
binned_data <- cut(data, breaks = bins, labels = 1:num_bins, include.lowest = TRUE)

# Create a data frame with the binned data
df <- data.frame(binned_data)

# Calculate the bin means
bin_means <- tapply(data, binned_data, mean)

