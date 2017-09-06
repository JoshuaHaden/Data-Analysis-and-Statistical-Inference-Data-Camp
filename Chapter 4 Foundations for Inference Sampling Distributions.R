###Chapter 4 Foundations for Inference: Sampling Distributions

###Sampling Distributions
# Load the ames data frame:
load(url("http://s3.amazonaws.com/assets.datacamp.com/course/dasi/ames.RData"))

# Make some preliminary inspections:
names(ames)
head(ames)
tail(ames)

###A First Distribution Analysis
# The 'ames' data frame is already loaded into the workspace.
# Assign the variables:
area <- ames$Gr.Liv.Area
price <- ames$SalePrice

# Calculate the summary and draw a histogram of 'area'
summary(area)
hist(area)

###Sampling from the Population
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Create the samples:
samp0 <- sample(area,50)
samp1 <- sample(area,50)

# Draw the histograms:
hist(samp0)
hist(samp1)

###The Sampling Distribution
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Set up an empty vector of 5000 NAs to store sample means:
sample_means50 <- rep(NA, 5000)

# Take 5000 samples of size 50 of 'area' and store all of them in 'sample_means50'.
for (i in 1:5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
}

# View the result. If you want, you can increase the bin width to show more detail by changing the 'breaks' argument.
hist(sample_means50, breaks = 13)

###Interlude: The for loop
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Set up an empty vector of 5000 NAs to store sample means:
sample_means50 <- rep(NA, 5000)

# Take 5000 samples of size 50 of 'area' and store all of them in 'sample_means50'.
# Also print 'i' (the index counter):
for (i in 1:5000) {
  samp <- sample(area, 50)
  sample_means50[i] <- mean(samp)
  print(i)
}

###Interlude: Breaking it Down
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# The vector 'sample_means50' is initialized with NA values
sample_means50 <- rep(NA, 5000)
# The for loop runs 5000 times, with 'i' taking values 1 up to 5000
for (i in 1:5000) {
  # Take a random sample of size 50
  samp <- sample(area, 50)
  # Store the mean of the sample in the 'sample_means50' vector on the ith place
  sample_means50[i] <- mean(samp)
  # Print the counter 'i'
  print(i)
}

# Print the first few random means
head(sample_means50)

###Your First for loop
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Initialize the vector to store the means in:
sample_means_small <- rep(NA,100)

# Run your for loop:
for(i in 1:100) {
  # Take a random sample of size 50
  samp <- sample(area,50)
  sample_means_small[i] <- mean(samp)
}

# Print the result:
sample_means_small

###More on Sampling
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Initialize the sample distributions:
sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)

# Run the for loop:
for (i in 1:5000) {
  samp <- sample(area, 10)
  sample_means10[i] <- mean(samp)
  samp <- sample(area, 100)
  sample_means100[i] <- mean(samp)
}

# Take a look at the results:
head(sample_means10)
head(sample_means50) # was already loaded
head(sample_means100)

###Even More on Sampling
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Initialize the sample distributions:
sample_means10 <- rep(NA, 5000)
sample_means100 <- rep(NA, 5000)

# Run the for loop:
for (i in 1:5000) {
  samp <- sample(area, 10)
  sample_means10[i] <- mean(samp)
  samp <- sample(area, 100)
  sample_means100[i] <- mean(samp)
}

# Take a look at the results:
head(sample_means10)
head(sample_means50) # was already loaded
head(sample_means100)

###Influence of Sample Size
# The sample distributions are already loaded into the workspace

# Divide the plot in 3 rows:
par(mfrow = c(3, 1))

# Define the limits for the x-axis:
xlimits <- range(sample_means10)

# Draw the histograms:
hist(sample_means10,breaks=20,xlim=xlimits)
hist(sample_means50,breaks=20,xlim=xlimits)
hist(sample_means100,breaks=20,xlim=xlimits)

###Now: Prices
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# Take a sample of size 50 from 'price':
sample_50 <- sample(price,50)

# Print the mean:
mean(sample_50)

###Sampling Distribution of Prices
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# The editor is your playground, no more help :)
sample_means50 <- rep(NA,5000)

# Run for loop:
for (i in 1:5000) {
  samp <- sample(price, 50)
  sample_means50[i] <- mean(samp)
}

# Print the first few results
head(sample_means50)

# Mean home price
mean(sample_means50)

###More on Sampling Distribution of Prices
# The 'ames' data frame and 'area' and 'price' objects are already loaded into the workspace

# 'sample_means50' is already loaded.
# Insert your code:
sample_means150 <- rep(NA,5000)

# Run for loop:
for (i in 1:5000) {
  samp <- sample(price, 150)
  sample_means150[i] <- mean(samp)
}

# Print the first few results
head(sample_means150)

# Mean home price
mean(sample_means150)

# Histograms
hist(sample_means50)
hist(sample_means150)


