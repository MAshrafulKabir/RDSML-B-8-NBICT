# Importing the library
library(ggplot2)

# Basic histogram using ggplot2
ggplot(Before_judging_pigeons, aes(x = Pigeons)) +
  geom_bar()

# Changing the width of bins
ggplot(Before_judging_pigeons, aes(x = Pigeons)) +
  geom_bar(binwidth =1, color = "black")

# changing colors
ggplot(Before_judging_pigeons, aes(x = Pigeons)) +
  geom_bar(binwidth =1, color = "black", fill = "lightblue")

# Adding the mean line
myPlot=ggplot(Before_judging_pigeons, aes(x = Pigeons)) +
  geom_bar(binwidth =1, color = "black", fill = "white")

myPlot + geom_vline (aes(xintercept = mean(Pigeons)), color = "blue", linetype = "dashed", size = 1)

