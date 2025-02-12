# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load your dataset
df <- read.csv("Sleep_Efficiency.csv")

# Check the class of the 'Gender' column
class(df$Gender)

# Convert 'Gender' to a factor
df$Gender <- as.factor(df$Gender)

# Display the first few rows of the dataset
head(df)

# Check for NULL values in 'Gender' column
any(is.null(df$Gender))

# Convert 'Gender' and 'Smoking_status' to factors if necessary
df$Gender <- as.factor(df$Gender)
df$Smoking_status <- as.factor(df$Smoking_status)

# Question 2: How does caffeine consumption relate to sleep efficiency and the number of awakenings?
model_caffeine <- lm(Sleep_efficiency ~ Caffeine_consumption + Awakenings, data = df)

# Summary of the regression model
summary(model_caffeine)

# Plot the linear regression line for Caffeine Consumption and Sleep Efficiency
plot(df$Caffeine_consumption, df$Sleep_efficiency, xlab = "Caffeine Consumption", ylab = "Sleep Efficiency", main = "Linear Regression: Caffeine Consumption vs. Sleep Efficiency")
abline(model_caffeine, col = "blue")  # Add the regression line to the plot

# Plot the linear regression line for Caffeine Consumption and Awakenings
plot(df$Caffeine_consumption, df$Awakenings, xlab = "Caffeine Consumption", ylab = "Awakenings", main = "Linear Regression: Caffeine Consumption vs. Awakenings")
abline(model_caffeine, col = "blue")  # Add the regression line to the plot

# Question 3: Is there a significant association between exercise frequency and the percentage of REM sleep?
model_exercise_rem <- lm(REM_sleep_percentage ~ Exercise_frequency, data = df)

# Summary of the regression model
summary(model_exercise_rem)

# Plot the linear regression line for Exercise Frequency and REM Sleep Percentage
plot(df$Exercise_frequency, df$REM_sleep_percentage, xlab = "Exercise Frequency", ylab = "REM Sleep Percentage", main = "Linear Regression: Exercise Frequency vs. REM Sleep Percentage")
abline(model_exercise_rem, col = "blue")  # Add the regression line to the plot
