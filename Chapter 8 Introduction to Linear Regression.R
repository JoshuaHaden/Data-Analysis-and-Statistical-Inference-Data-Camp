###Chapter 8 Introduction to Linear Regression

###Moneyball
# Load the 'mlb11' data frame into the workspace:
load(url("http://assets.datacamp.com/course/dasi/mlb11.RData"))

###Quantifying the Strength of a Linear Relationship
# The 'mlb11' data frame is already loaded into the workspace

# Calculate the correlation between runs and at_bats:
correlation <- cor(mlb11$runs,mlb11$at_bats)

# Print the result:
correlation

###Estimating the Best Fit
# The 'mlb11' data frame is already loaded into the workspace

# Use the 'plot_ss' function to draw an estimated regression line. Two points are given to get you started:
x1 <- 5400
y1 <- 750

x2 <- 5700
y2 <- 650

plot_ss(x = mlb11$at_bats, y = mlb11$runs, 
        x1, y1, x2, y2, showSquares = TRUE)

###The Best Fit
# The 'mlb11' data frame is already loaded into the workspace

# Adapt the function to plot the best fitting line:
plot_ss(x = mlb11$at_bats, y = mlb11$runs, showSquares = TRUE, leastSquares = TRUE)

###The Linear Model
# The 'mlb11' data frame is already loaded into the workspace

# Use the 'lm' function to make the linear model:
m1 <- lm(runs ~ at_bats, data=mlb11)

# Print the model:
m1

###Understanding the Output of lm
# The 'mlb11' data frame is already loaded into the workspace

# Use the 'lm' function to make the linear model:
m1 <- lm(runs ~ at_bats, data = mlb11)

# The summary of 'm1':
summary(m1)

###Breaking it Down
# The 'mlb11' data frame is already loaded into the workspace

# Use the 'lm' function to make the linear model. Print the summary:
summary(lm(runs ~ homeruns, data = mlb11))

###Prediction and Prediction Errors
# The 'mlb11' data frame is already loaded into the workspace

# Create a scatterplot:
plot(mlb11$runs ~ mlb11$at_bats)

# The linear model:
m1 <- lm(runs ~ at_bats, data = mlb11)

# Plot the least squares line:
abline(m1)

