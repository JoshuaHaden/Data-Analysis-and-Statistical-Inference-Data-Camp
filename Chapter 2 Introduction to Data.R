###Chapter 2 Introduction to Data

###Welcome!
# Load the cdc data frame into the workspace
load(url("http://assets.datacamp.com/course/dasi/cdc.Rdata"))

###Which Variables Are You Working With?
# The cdc data frame is already loaded into the workspace

# Print the names of the variables:
names(cdc)

###Taking a Peek at Your Data
# The cdc data frame is already loaded into the workspace

# Print the head and tails of the data frame:
head(cdc)
tail(cdc)

###Let's Refresh
# The cdc data frame is already loaded into the workspace.

# View the head or tail of both the height and the genhlth variables:
head(cdc$height)
head(cdc$genhlth)
tail(cdc$height)
tail(cdc$genhlth)

# Assign your sum here:
sum <- 84941+19686

# Assign your multiplication here:
mult <- 73*51

###Turning Info Into Knowledge-Numerical Data
# The cdc data frame is already loaded into the workspace
mean(cdc$weight)
var(cdc$weight)
median(cdc$weight)
summary(cdc$weight)

###Turning Info Into Knowledge - Categorical Data
# The cdc data frame is already loaded into the workspace.

# Create the frequency table here:
table(cdc$genhlth)

# Create the relative frequency table here:
table(cdc$genhlth)/20000

###Creating Your First Barplot
# The cdc data frame is already loaded into the workspace.

# Draw the barplot:
barplot(table(cdc$smoke100))

###Even Prettier: the Mosaic Plot
# The cdc data frame is already loaded into the workspace

gender_smokers <- table(cdc$gender, cdc$smoke100)

gender_smokers

# Plot the mosaicplot:
mosaicplot(gender_smokers)

###Interlude: How R Thinks About Data (1)
# The cdc data frame is already loaded into the workspace

# Create the subsets:
height_1337 <- cdc[1337,5]
weight_111 <- cdc[111,6]

# Print the results:
height_1337
weight_111

###Interlude (2)
# The cdc data frame is already loaded into the workspace

# Create the subsets:
first8 <- cdc[1:8, 3:5]
wt_gen_10_20 <- cdc[10:20, 6:9]

# Print the subsets:
first8
wt_gen_10_20

###Interlude (3)
# The cdc data frame is already loaded into the workspace

# Create the subsets:
resp205 <- cdc[205,]

ht_wt <- cdc[,5:6]


# Print the subsets:
resp205
head(ht_wt)

###Interlude (4)
# The cdc data frame is already loaded into the workspace

# Create the subsets:
resp1000_smk <- cdc$smoke100[1000]

first30_ht <- cdc$height[1:30]


# Print the subsets:
resp1000_smk
first30_ht

###A Little More on Subsetting
# The cdc data frame is already loaded into the workspace

# Create the subsets:
very_good <- subset(cdc,genhlth=="very good")
age_gt50 <- subset(cdc,age>50)

# Print the subsets:
head(very_good)
head(age_gt50)

###Subset - One Last Time
# The cdc data frame is already loaded into the workspace

# Create the subset:
under23_and_smoke <- subset(cdc,cdc$age<23 & cdc$smoke100)

# Print the top six rows of the subset:
head(under23_and_smoke)

###Visualizing with Box Plots
# The cdc data frame is already loaded into the workspace.

# Draw the box plot of the respondents heights:
boxplot(cdc$height)

# Print the summary:
summary(cdc$height)

###More on Box Plots
# The cdc data frame is already loaded into the workspace.

# Draw the box plot of the weights versus smoking:
boxplot(cdc$weight ~ cdc$smoke100)

###One Last Box Plot
# The cdc data frame is already loaded into the workspace.

# Calculate the BMI:
bmi <- (cdc$weight/cdc$height^2)*703

# Draw the box plot:
boxplot(bmi ~ cdc$genhlth)

###Histograms
# The cdc data frame and bmi object are already loaded into the workspace.
# Draw a histogram of bmi:
hist(bmi)

# And one with breaks set to 50:
hist(bmi,breaks=50)

# And one with breaks set to 100:
hist(bmi,breaks=100)

###Weight vs Desired Weight
# The cdc data frame is already loaded into the workspace.

# Draw your plot here
plot(cdc$weight, cdc$wtdesire)


