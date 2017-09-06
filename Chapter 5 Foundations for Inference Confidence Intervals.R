###Chapter 5 Foundations for Inference Confidence Intervals

###One Sample from Ames, Iowa
# The 'ames' data frame is already loaded into the workspace

# Take a sample of size 60 of the population:
population <- ames$Gr.Liv.Area
samp <- sample(population,60)

# Calculate the mean:
sample_mean <- mean(samp)

# Draw a histogram:
hist(samp)

###Confidence Intervals
# The 'ames' data frame is already loaded into the workspace,
# as are population, samp and sample_mean

# Calculate the standard error:
se <- sd(samp)/sqrt(60)

# Calculate the lower and upper bounds of your confidence interval and print them:
lower <- sample_mean - 1.96 * se
upper <- sample_mean + 1.96 * se
c(lower, upper)

###Challenge (1)
# The 'ames' data frame is already loaded into the workspace

# Initialize 'samp_mean', 'samp_sd' and 'n':
samp_mean <- rep(NA,50)
samp_sd <- rep(NA,50)
n <- 60

###Challenge (2)
# The 'ames' data frame is already loaded into the workspace

# Initialize 'samp_mean', 'samp_sd' and 'n':
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

# For loop goes here:
for (i in 1:50) {
  # Obtain a sample of size n = 60 from the population
  samp <- sample(population, n) 
  # Save sample mean in ith element of samp_mean
  samp_mean[i] <- mean(samp)
  # Save sample sd in ith element of samp_sd
  samp_sd[i] <- sd(samp)
}

###Challenge (3)
# The 'ames' data frame is already loaded into the workspace

# Initialize 'samp_mean', 'samp_sd' and 'n':
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

# For loop goes here:
for (i in 1:50) {
  samp <- sample(population, n) 
  samp_mean[i] <- mean(samp)
  samp_sd[i] <- sd(samp)
}

# Calculate the interval bounds here:
lower <- samp_mean - (1.96 * samp_sd/sqrt(n))
upper <- samp_mean + (1.96 * samp_sd/sqrt(n))

# Plotting the confidence intervals:
pop_mean <- mean(population)
plot_ci(lower, upper, pop_mean)

###The 99%
# The 'ames' data frame is already loaded into the workspace

# Initialize 'samp_mean', 'samp_sd' and 'n':
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

# For loop goes here:
for (i in 1:50) {
  samp <- sample(population, n) 
  samp_mean[i] <- mean(samp)
  samp_sd[i] <- sd(samp)
}

# Calculate the interval bounds here:
lower <- samp_mean - (2.58 * samp_sd/sqrt(n))
upper <- samp_mean + (2.58 * samp_sd/sqrt(n))

# Plotting the confidence intervals:
pop_mean <- mean(population)
plot_ci(lower, upper, pop_mean)

