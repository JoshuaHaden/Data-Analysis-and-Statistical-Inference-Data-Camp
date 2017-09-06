###Chapter 6 Inference for Numerical Data

###North Carolina Births
# Load your dataset:
load(url("http://assets.datacamp.com/course/dasi/nc.Rdata"))

# List the variables in the dataset:
names(nc)

###A First Analysis
# The nc data frame is already loaded into the workspace

# Compute summaries of the data:
summary(nc)

# Use visualization and summary statistics to view the data for gained:
summary(nc$gained)
hist(nc$gained)
boxplot(nc$gained)

###Cleaning Your Data
# The 'nc' data frame is already loaded into the workspace

# Create a clean version fo your data set:
gained_clean <- na.omit(nc$gained)

# Set 'n' to the length of 'gained_clean':
n <- length(gained_clean)

###The Bootstrap
# The 'nc' data frame is already loaded into the workspace

# Initialize the 'boot_means' object:
boot_means <- rep(NA, 100)

# Insert your for loop:
for(i in 1:100){
  boot_sample <- sample(gained_clean, n, replace = TRUE)
  boot_means[i] <- mean(boot_sample)
}

# Make a histogram of 'boot_means':
hist(boot_means)

###The Inference Function
# The 'nc' data frame is already loaded into the workspace

# Load the 'inference' function:
load(url("http://assets.datacamp.com/course/dasi/inference.Rdata"))

# Run the inference function:
inference(nc$gained, type="ci", method="simulation", conflevel=0.9, est="mean", boot_method="perc")

###Setting the Confidence Interval
# The 'nc' data frame and the 'inference' function are already loaded into the workspace

# Adapt the inference function:
inference(nc$gained, type="ci", method="simulation", conflevel=0.95, est="mean", boot_method="perc")

###Choosing a Bootstrap Method
# The 'nc' data frame and the 'inference' function are already loaded into the workspace

# Adapt the inference function:
inference(nc$gained, type="ci", method="simulation", conflevel=0.95, est="mean", boot_method="se")

###Setting the Parameter of Interest
# The 'nc' data frame and the 'inference' function are already loaded into the workspace

# Adapt the inference function:
inference(nc$gained, type="ci", method="simulation", conflevel=0.95, est="median", boot_method="se")

###Father's Age
# The 'nc' data frame and the 'inference' function are already loaded into the workspace

# Adapt the inference function to create a 95% bootstrap interval for the mean age of fathers:
inference(nc$fage, type="ci", method="simulation", conflevel=0.95, est="mean", boot_method="se")

###Relationships Between Two Variables
# The 'nc' data frame is already loaded into the workspace

# Draw your plot here:
plot(nc$weight ~ nc$habit)

###The by Function
# The 'nc' data frame is already loaded into the workspace

# Use the 'by' function here:
by(nc$weight, nc$habit, mean)

###Conditions for Inference
# The 'nc' data frame is already loaded into the workspace

# Use the 'by' function here:
by(nc$weight,nc$habit,length)

###More Inference
# The 'nc' data frame is already loaded into the workspace

# The code:
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical")

###Changing the Order
# The 'nc' data frame is already loaded into the workspace

# Add the 'order' argument to the 'inference' function:
inference(y = nc$weight, x = nc$habit, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical", order = c("smoker","nonsmoker"))

###The General Social Survey
# Load the 'gss' data frame:
load(url("http://assets.datacamp.com/course/dasi/gss.Rdata"))
head(gss$wordsum)
head(gss$class)

###Analyze the Variables
# The 'gss' data frame is already loaded into the workspace

# Numerical and visual summaries of 'wordsum' and 'class':
summary(gss$wordsum)
summary(gss$class)
hist(gss$wordsum)
boxplot(gss$wordsum)

# Numerical and visual summaries of their relations:
by(gss$wordsum, gss$class, mean)
boxplot(gss$wordsum ~ gss$class)

###ANOVA Test
# The 'gss' data frame is already loaded into the workspace

# The test:
inference(y = gss$wordsum, x = gss$class, est = "mean", method = "theoretical", type = "ht", alternative = "greater")

