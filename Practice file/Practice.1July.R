# Make a basic scatter plot
dataset = Individuals_of_rock_pigeons
library(ggplot2)
dataset(Individuals_of_rock_pigeons)
ggplot(dataset, aes(x = Sites, y = Rock_pigeons)) +
          geom_point() +
  geom_smooth()
