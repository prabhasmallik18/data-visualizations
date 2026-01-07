# ----------------------------------------------------
# Air Passengers Data Visualization using R
# Line Chart Plotting
# ----------------------------------------------------

# Load required library
library(ggplot2)

# Load built-in dataset
data("AirPassengers")

# ----------------------------------------------------
# Convert dataset to data frame
# ----------------------------------------------------

ap_df <- data.frame(
  Year = as.numeric(time(AirPassengers)),
  Passengers = as.numeric(AirPassengers)
)

# ----------------------------------------------------
# Base R Line Plot (NEW COLORS)
# ----------------------------------------------------

plot(
  AirPassengers,
  type = "l",
  lwd = 3,
  col = "darkgreen",
  main = "Air Passengers Over Time",
  xlab = "Year",
  ylab = "Number of Passengers"
)

points(
  AirPassengers,
  pch = 17,
  col = "orange"
)

grid(col = "gray80")

# ----------------------------------------------------
# ggplot2 Line Plot with Trend Line (NEW COLORS)
# ----------------------------------------------------

ggplot(ap_df, aes(x = Year, y = Passengers)) +
  geom_line(color = "steelblue", linewidth = 1.3) +
  geom_point(color = "brown", size = 2) +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(
    title = "Trend Analysis of Air Passengers",
    subtitle = "From 1949–1960",
    caption = "Using Air Passengers Dataset",
    x = "Month",
    y = "Number of Passengers"
  ) +
  theme_minimal() +
  theme(
    axis.title.x = element_text(color = "purple"),
    axis.title.y = element_text(color = "darkred"),
    plot.title = element_text(size = 14)
  )
