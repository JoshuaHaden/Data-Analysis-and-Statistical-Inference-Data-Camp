###Chapter 1 Introduction to R

###Welcome!
# This is the editor and the part below the white line is called the console.

# The hashtag is used to add comments

# An addition
5 + 5

# A substraction
5 - 5

# A division
(5 + 5)/2

# A plot
plot(cars, type="o", col="blue")

###Load a Dataset into R
# Read in your data set and assign to the object:
present <- read.table("http://assets.datacamp.com/course/dasi/present.txt")

# This will print your data set in the console:
present

###Examining the Data Set
# The present data frame is already loaded.
# Print the number of rows and variables with the 'dim' function:
dim(present)

# Print the names of the variables of the data frame:
names(present)

###Some More Exploration
# The present dataset is already loaded.
# Find the number of boys born each year, and assign your answer to 
num_boys <- present$boys

# Find the number of girls born each year, and assign your answer to
num_girls <- present$girls

# This will print the results
num_boys
num_girls

###Putting It in a Graph
# The present dataset is already loaded.

# Type here the code to create the plot:
plot(present$year,present$girls)

###Connecting the Dots
# The present dataset is already loaded.

# Create the plot here:
plot(present$year,present$girls,type="l")

###Using the Help Function
# Look for the documentation of the read.table function in the console
?read.table()

###R - The Big Calculator
# The present dataset is already loaded.
# The vector babies:
babies <- present$boys+present$girls

# Your plot
plot(present$year,babies,type="l")

###Comparing the Data Set
# The present dataset is already loaded.

# Check when boys outnumber girls
present$boys > present$girls

###Challenge
# The present dataset is already loaded.
# Plot the boy-to-girl ratio for every year:
plot(present$year,present$boy/present$girl,type="l")

