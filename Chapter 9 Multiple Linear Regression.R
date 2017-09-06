###Chapter 9 Multiple Linear Regression

###The Data
# Load in the evals data set with the help of the provided function.
load(url("http://assets.datacamp.com/course/dasi/evals.RData"))

###Visualizing Relationships
# The 'evals' data frame is already loaded into the workspace

# Create a scatterplot for 'age' vs 'bty_avg':
plot(evals$age, evals$bty_avg)

# Create a boxplot for 'age' and 'gender':
boxplot(evals$age ~ evals$gender)

# Create a mosaic plot for 'rank' and 'gender':
mosaicplot(evals$rank ~ evals$gender)

###Simple Linear Regression
# The evals data frame is already loaded into the workspace

# Create a scatterplot for score and bty_avg:
plot(evals$score ~ evals$bty_avg)

###The Jitter Function
# The 'evals' data frame is already loaded into the workspace

# Apply 'jitter' on the 'bty_avg' or 'score' variable of your initial plot:
plot(evals$score ~ jitter(evals$bty_avg))
plot(jitter(evals$score) ~ evals$bty_avg)

###More Than Natural Variation?
# The 'evals' data frame is already loaded into the workspace

# Your initial plot:
plot(evals$score ~ jitter(evals$bty_avg))

# Construct the linear model:
m_bty <- lm(score ~ bty_avg, data = evals)

# Plot your linear model on your plot:
abline(m_bty)

###Multiple Linear Regression
# The evals data frame is already loaded into the workspace

# Your scatterplot:
plot(evals$bty_avg ~ evals$bty_f1lower)

# The correlation:
cor(evals$bty_avg, evals$bty_f1lower)

###The Relationship Between All Beauty Variables
# The 'evals' data frame is already loaded into the workspace

# The relationships between all beauty variables:
plot(evals[, 13:19])

###Taking Into Account Gender
# The 'evals' data frame is already loaded into the workspace

# Your new linear model:
m_bty_gen <- lm(score ~ bty_avg + gender,data=evals)

# Study the outcome: 
summary(m_bty_gen)

###Gendermale
# The 'evals' data frame is already loaded into the workspace

# Your plot:
multiLines(m_bty_gen)

###Switching Rank and Gender
# The 'evals' data frame is already loaded into the workspace

# Your linear model with rank and average beauty:
m_bty_rank <- lm(score ~ bty_avg + rank,data=evals)

# View the regression output:
summary(m_bty_rank)

###The Search for the Best Model
# The 'evals' data frame is already loaded into the workspace

# The full model:
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)

# View the regression output:
summary(m_full)

###Eliminating Variables from the Model-p value Selection
# The 'evals' data frame is already loaded into the workspace

# The full model:
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)

# Your new model:
m_new <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_credits + bty_avg, data = evals)

# View the regression output:
summary(m_new)

###Eliminating Variables from the Model
###Adjusted R-Squared Selection
# The 'evals' data frame is already loaded into the workspace

# The full model:
m_full <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m_full)$adj.r.squared

# Remove rank:
m1 <- lm(score ~ ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m1)$adj.r.squared

# Remove ethnicity:
m2 <- lm(score ~ rank + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m2)$adj.r.squared

# Remove gender:
m3 <- lm(score ~ rank + ethnicity + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m3)$adj.r.squared

# Remove language:
m4 <- lm(score ~ rank + ethnicity + gender + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m4)$adj.r.squared

# Remove age:
m5 <- lm(score ~ rank + ethnicity + gender + language + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m5)$adj.r.squared

# Remove cls_perc_eval:
m6 <- lm(score ~ rank + ethnicity + gender + language + age + cls_students + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m6)$adj.r.squared

# Remove cls_students:
m7 <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_level + cls_profs + cls_credits + bty_avg, data = evals)
summary(m7)$adj.r.squared

# Remove cls_level:
m8 <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_profs + cls_credits + bty_avg, data = evals)
summary(m8)$adj.r.squared

# Remove cls_profs:
m9 <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_credits + bty_avg, data = evals)
summary(m9)$adj.r.squared

# Remove cls_credits:
m10 <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + bty_avg, data = evals)
summary(m10)$adj.r.squared

# Remove bty_avg:
m11 <- lm(score ~ rank + ethnicity + gender + language + age + cls_perc_eval + cls_students + cls_level + cls_profs + cls_credits, data = evals)
summary(m11)$adj.r.squared


