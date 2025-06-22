
# Generating a basic scatter plot
ggplot (Individuals_of_rock_pigeons, aes(x = `Rock-pigeons`, y = 'Sites')) +
  geom_point(size = 3, shape = 20) +
  geom_smooth()

# Change the linetype and color
ggplot (Individuals_of_rock_pigeons, aes(x = `Rock-pigeons`, y = 'Sites')) +
  geom_point(size = 3, shape = 20) +
  geom_smooth(method = lm, linetype = "dashed", color = "red")


# Basic histogram using ggplot2
ggplot (Sex_weight, aes(x = `Weight in gram`)) +
  geom_histogram(binwidth = 3, color = "black", fill = "lightblue")

# Histogram with density plot
ggplot (Sex_weight, aes(x = `Weight in gram`)) +
  geom_histogram (aes(y = after_stat(density)), color = "black", fill = "lightblue") +
  geom_density(fill = "blue", alpha = 0.2)
