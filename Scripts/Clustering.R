## Preparing Data for Clustering

Cluster_data <- User_summary %>%
  select(avg_steps, avg_sleep)

# Scale variables
Cluster_scaled <- scale(Cluster_data)

## Determining the Optimal Number of Clusters

# Elbow Method
wss <- sapply(1:10, function(k){
  kmeans(Cluster_scaled, centers = k, nstart = 25)$tot.withinss
})

plot(1:10, wss, type = "b",
     pch = 19,
     frame = FALSE,
     xlab = "Number of Clusters (k)",
     ylab = "Within-cluster Sum of Squares (WSS)")

## Applying K-Means Clustering
set.seed(123)

kmeans_result <- kmeans(Cluster_scaled, centers = 4, nstart = 25)


# Add cluster labels to dataset
User_summary <- User_summary %>%
  mutate(cluster = factor(kmeans_result$cluster))
## Visualizing Clusters
Cluster_Plot<-ggplot(User_summary, aes(x = avg_steps, y = avg_sleep, color = cluster)) +
  geom_point(size = 3, alpha = 0.8) +
  labs(
    title = "User Segmentation Based on Activity and Sleep",
    x = "Average Daily Steps",
    y = "Average Minutes Asleep",
    color = "Cluster"
  ) +
  theme_minimal()

Cluster_Plot