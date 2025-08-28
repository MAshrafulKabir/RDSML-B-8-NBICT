# Two Sample T Test / Independent Sample T Test
# Importing the dataset
dataset <- read.csv("scores.csv")

# Checking for the normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

# Checking for the homogeneity of variances
var.test(x = dataset$Male, y = dataset$Female)

# Running the independent sample T test
t.test(x = dataset$Male, y = dataset$Female, var.equal = TRUE)

# Basic barplot
library(ggplot2)
ggplot(data = dataset, aes(x = dataset$Male, y = dataset$Female)) +
  geom_bar(stat = "identity", fill = "steelblue") + theme_minimal()





