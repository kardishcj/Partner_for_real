###################################

# Marie Agosta Assignment 1
# Get R-file, perform basic descriptive stats on time-series objects, 
# Combine time-series objects

##################################

#Looking at data sets on R in order to choose one

data()

# loading UKLungDeaths data, as it seems doable and fairly complete 

data(UKLungDeaths)

#looking at UKLungDeaths data on the tab that layouts the data in R

?UKLungDeaths

#The data is broken down into three different time-series objects: 
# both sexes (ldeaths), males (mdeaths) and females (fdeaths).
# It shows monthly deaths from bronchitis, emphysema and asthma in the UK, 1974–1979

plot(ldeaths)
plot(fdeaths)
plot(mdeaths)

# I'm plotting male and female deaths (below) to see if there is a trend or if there 
# are large disparities 

plot(mdeaths, fdeaths)

# The overall trend is the same
# I'll look at range first for female and male deaths 

range(mdeaths)

#[1]  940 2750
# Much larger range for males, compared to females.

range(fdeaths)

#[1]  330 1141

# Looking at overall summary statistics to see if male numbers are larger
# across the board 

summary(mdeaths)

#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#940    1138    1344    1496    1846    2750 

summary(fdeaths)

#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#330.0   411.0   512.0   560.7   681.5  1141.0 

# There is an equal amount of data for both men and women, therefore the higher numbers in 
# for men speak to potential enviromental factors (working in mines) and potential cultural
# factors (perhaps men smoked more cigerettes than women..?) These are merely guesstimates
# as to some of the trends. 

sd (mdeaths)

# [1] 433.1509

sd (fdeaths)

# [1] 179.72

cor.test(mdeaths, fdeaths)

#Pearson's product-moment correlation

#data:  mdeaths and fdeaths
#t = 37.694, df = 70, p-value < 2.2e-16
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
# 0.9621846 0.9851124
#sample estimates:
#      cor 
# 0.9762413 

# Combining the time-series objects into one object 

deaths <- data.frame(fdeaths, ldeaths, mdeaths)












