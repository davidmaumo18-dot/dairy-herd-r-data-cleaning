library(dplyr)
library(janitor)


herd <- read.csv("dairy_herd.csv")
str(herd)
colSums(is.na(herd))
sum(duplicated(herd))

summary(herd)

library(ggplot2)

# Distribution of milk yield
ggplot(herd, aes(x = milk_yield)) + 
  geom_histogram(binwidth = 1, fill = "steelblue") +
  labs(title = "Distributiion of Milk Yield", x = "Litres/day", y = "Count")

# Milk yield by breed
ggplot(herd, aes(x = breed, y = milk_yield)) +
  geom_boxplot(fill = "lightblue") +
`  labs(title = "Milk Yield by Breed")

# Relationship: weight vs yield
ggplot(herd, aes(x = weight_kg, y = milk_yield, color = breed)) +
  geom_point(size = 2) +
  labs(title = "Weight vs Milk Yield by Breed", x = "Weight (kg)", y = "Milk Yield (L/day)")

# Grouped summary with efficiency
library(dplyr)

herd <- herd %>%
  mutate(yield_per_feed_kg = milk_yield / feed_kg_day)

breed_summary <- herd %>%
  group_by(breed) %>%
  summarise(
    avg_yield = mean(milk_yield),
    avg_weight = mean(weight_kg),
    avg_efficiency = mean(yield_per_feed_kg),
    at_risk_pct = mean(health_status !="Healthy") * 100)
  

breed_summary
  )