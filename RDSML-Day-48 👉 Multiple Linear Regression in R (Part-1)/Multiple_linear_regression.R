# Multiple linear regression
# Importing the dataset
dataset = read.csv("50_Startups.csv")

# Encoding the categorical data
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1, 2, 3))

# Splitting the dataset into the training set and test set
# install.packages("caTools")
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting the Multiple Linear Regression model to the training set
regressor <- lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend +
                  State, 
                data = training_set)

# Checking the summary of the model
summary(regressor)
