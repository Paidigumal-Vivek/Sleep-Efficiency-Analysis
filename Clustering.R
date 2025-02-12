
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load your dataset
df <- read.csv("Sleep_Efficiency.csv")


#1
# Load necessary libraries
library(cluster)

# Select relevant variables for clustering (example with Sleep_duration and REM_sleep_percentage)
data_for_clustering <- df[, c("Sleep_duration", "REM_sleep_percentage")]

# Standardize the data
scaled_data <- scale(data_for_clustering)

# Perform k-means clustering based on Gender (assuming Gender is a binary variable)
kmeans_result_gender <- kmeans(scaled_data, centers = 2)

# Visualize the clusters by Gender
plot(scaled_data, col = kmeans_result_gender$cluster)
points(kmeans_result_gender$centers, col = 1:2, pch = 8, cex = 2)



# Load necessary libraries
library(ggplot2)
library(dplyr)
library(cluster)

# Load your dataset
df <- read.csv("Sleep_Efficiency.csv")

# Select relevant variables for clustering (example with Sleep_duration and REM_sleep_percentage)
data_for_clustering <- df[, c("Sleep_duration", "REM_sleep_percentage")]

# Standardize the data
scaled_data <- scale(data_for_clustering)

# Perform k-means clustering based on Gender (assuming Gender is a binary variable)
kmeans_result_gender <- kmeans(scaled_data, centers = 2)

# Visualize the clusters by Gender using ggplot2
df_clustered <- cbind(df, Cluster = as.factor(kmeans_result_gender$cluster))

ggplot(df_clustered, aes(x = Sleep_duration, y = REM_sleep_percentage, color = Cluster)) +
  geom_point() +
  geom_text(aes(label = ifelse(Cluster == 1, "Cluster 1", "Cluster 2")), 
            hjust = -0.2, vjust = 0.5, size = 3) +
  labs(title = "K-means Clustering by Gender",
       x = "Sleep Duration",
       y = "REM Sleep Percentage") +
  theme_minimal()

citation()
citation("ggplot2")
citation("dplyr")
citation("cluster")
