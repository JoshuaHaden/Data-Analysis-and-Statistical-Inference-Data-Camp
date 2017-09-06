###Chapter 3 Probability

###Getting Started
# Load the data frame
load(url("http://assets.datacamp.com/course/dasi/kobe.RData"))

# Inspect your data
head(kobe)
tail(kobe)

###Kobe's Track Record
# The 'kobe' data frame is already loaded into the workspace.

# Print the variable names of the data frame.
names(kobe)

# Print the first 9 values of the 'basket' variable
kobe$basket[1:9]

###A First Analysis
# The 'kobe' data frame is already loaded into the workspace.
# Assign Kobe's streak lengths:
kobe_streak <- calc_streak(kobe$basket)

# Draw a barplot of the result:
barplot(table(kobe_streak))

###Simulations in R
# Try some simulations!
outcomes <- c("heads", "tails")
sample(outcomes, size = 1, replace = TRUE)
sample(outcomes, size = 1, replace = TRUE)
sample(outcomes, size = 1, replace = TRUE)

###Flipping 100 Coins
# Run the simulation:
outcomes <- c("heads", "tails")
sim_fair_coin <- sample(outcomes,size=100,replace=TRUE)

# Print the object:
sim_fair_coin

# Compute the counts of heads and tails:
table(sim_fair_coin)

###Flipping an Unfair Coin
# Run the simulation:
outcomes <- c("heads", "tails")
sim_unfair_coin <- sample(outcomes,size=100,replace=TRUE,prob=c(0.2,0.8))

# Print the object:
sim_unfair_coin

# Compute the counts of heads and tails:
table(sim_unfair_coin)

###Simulating the Independent Shooter
# Run the simulation and assign the result to 'sim_basket'.
outcomes <- c("H", "M")
sim_basket <- sample(outcomes,size=133,replace=TRUE,prob=c(.45,.55))
table(sim_basket)

###Kobe vs the Independent Shooter
# The 'kobe' data frame is already loaded into the workspace.
# So is the 'sim_basket' simulation.

# Calculate streak lengths:
kobe_streak <- calc_streak(kobe$basket)
sim_streak <- calc_streak(sim_basket)

# Compute summaries:
summary(kobe_streak)
summary(sim_streak)

# Make bar plots:
kobe_table <- table(kobe_streak)
sim_table <- table(sim_streak)
barplot(kobe_table)
barplot(sim_table)

