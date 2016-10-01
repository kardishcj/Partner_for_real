# Marie Agosta Assignment 1


#Looking at data sets on R

data()

# loading UKLungDeaths data

data(UKLungDeaths)

#looking at UKLungDeaths data

?UKLungDeaths

#broken down into three different groups: 
# both sexes (ldeaths), males (mdeaths) and females (fdeaths).

plot(ldeaths)
plot(fdeaths)
plot(mdeaths)

# Comparing male and female deaths to see if there is a trend 

plot(mdeaths, fdeaths)

# I'll look at range first for female and male deaths 

range(mdeaths)

#[1]  940 2750

range(fdeaths)

#[1]  330 1141

#seeing first few variables in fdeaths

head(fdeaths)

#seeing first few variables in mdeaths

head(mdeaths)

summary(mdeaths)

#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#940    1138    1344    1496    1846    2750 

summary(fdeaths)

#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#330.0   411.0   512.0   560.7   681.5  1141.0 

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

## Better labels:







