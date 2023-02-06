library(ggplot2)
data <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)
num_bins <- 3
data_range <- max(data) - min(data)
bin_width <- data_range / num_bins
bins <- numeric(num_bins)
for (i in 1:num_bins) {
  bin_start <- min(data) + (i - 1) * bin_width
  bin_end <- bin_start + bin_width
  bins[i] <- bin_end
}
binned_data <- c(data, breaks = bins, labels = 1:num_bins, include.lowest = TRUE)
df <- data.frame(binned_data)
bin_means <- c(data, binned_data, mean)
print(bin_means)

