# Simple Linear Model

# Selecting the data set and building a model accordingly
# we are using women dataset for our analysis
# Matematical equation for women data set weight = a + b*(height)
# weight = -87.52 + 3.45(height)
# viewing the data set and its structure and dimension
?mtcars
?women
head(women)
str(women)
dim(women)

# Check linearity of the data set first by plotting it
plot(women$height, women$weight)

# building a model for women data set
lmmodel = lm(weight ~ height, data = women) # weight as dependent height independent
lmmodel

# checking summary of the model
summary(lmmodel)

# Plotting a regression line on graph to shown the relationship
abline(lm(weight ~ height, data= women), col='red', lwd=1)

# Predicting the values of y (weight) with a new data of x (height)
head(women)
range(women$weight)
range(women$height)
newdata = data.frame(height=c(50, 75, 80, 85))
newdata # checking the newdata
pred_weight = predict(lmmodel, newdata)
pred_weight # will predict 4 weight base on height

# Checking Assumptions of the model by diagnostic plotting
plot(lmmodel) # will show several plot such Residuals vs Fitted, Normal Q-Q, scale-Location, Residuals vs Leverage  
# to see that type Return in the Console

