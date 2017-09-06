###Chapter 7 Inference for Categorical Data

###The Data
# Load in the atheism data set with the help of the provided function.
load(url("http://assets.datacamp.com/course/dasi/atheism.RData"))

###Atheists in the US
# The 'atheism' data frame is already loaded into the workspace

# Your code to create the 'us12' subset: 
us12 <- subset(atheism, atheism$nationality == "United States" & atheism$year =="2012")

# Calculate the proportion of atheist responses:
proportion <- nrow(subset(us12,response == 'atheist'))/nrow(us12)

# Print the proportion:
proportion

###What About India?
# The 'atheism' data frame is already loaded into the workspace

# The subset for India for 2012:
india <- subset(atheism, atheism$nationality == "India" & atheism$year =="2012")

# The analysis using the 'inference' function:
inference(india$response, est = "proportion", 
          type = "ci", method = "theoretical", 
          success = "atheist")

###And China?
# The 'atheism' data frame is already loaded into the workspace

# The subset for China for 2012:
china <- subset(atheism, atheism$nationality == "China" & atheism$year =="2012")

# The analysis using the 'inference' function:
inference(china$response, est = "proportion", 
          type = "ci", method = "theoretical", 
          success = "atheist")

###The Margin of Error
# The first step is to make a vector p that is a sequence from 0 to 1 with each number separated by 0.01:
n <- 1000
p <- seq(0, 1, 0.01)

# We then create a vector of the margin of error (me) associated with each of these values of p using the familiar approximate formula (ME = 2 X SE):
me <- 2 * sqrt(p * (1 - p)/n)

# Finally, plot the two vectors against each other to reveal their relationship:
plot(me ~ p)

###Atheism in Spain
# The 'atheism' data frame and 'inference' function are already loaded into the workspace.

# Take the 'spain' subset:
spain <- subset(atheism, atheism$nationality == "Spain")

# Calculate the proportion of atheists from the 'spain' subset:
proportion <- nrow(subset(spain,response == 'atheist'))/nrow(spain)

# Use the inference function:
inference(spain$response, spain$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

###Rising in the US?
# The 'atheism' data frame and 'inference' function are already loaded into the workspace.

# Take the 'us' subset:
us <- subset(atheism, atheism$nationality == "United States")

# Calculate the proportion of atheists from the 'us' subset:
proportion <- nrow(subset(us,response == 'atheist'))/nrow(us)

# Use the inference function:
inference(us$response, us$year, est = "proportion", type = "ci", method = "theoretical", success = "atheist")

