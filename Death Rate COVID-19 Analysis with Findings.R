rm(list=ls()) # removes all variables stored previously
library(Hmisc) # import


data <- read_csv("COVID19_line_list_data.csv")
describe(data)  #Hmisc command


#cleaned up death column
data$death_dummy <- as.integer(data$death != 0)

#death rate

sum(data$death_dummy)/nrow(data)

##[1] 0.05806452

#Age
#claim: people who die are older

dead = subset(data, death_dummy ==1)
alive = subset(data, death_dummy == 0)

mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)

##> mean(dead$age, na.rm = TRUE)
##[1] 68.58621
##> mean(alive$age, na.rm = TRUE)
##[1] 48.07229

#is this statistically significant?
t.test(alive$age, dead$age, alternative = "two.sided", conf.level = 0.95)

##Welch Two Sample t-test

##data:  alive$age and dead$age
##t = -10.839, df = 72.234, p-value < 2.2e-16
##alternative hypothesis: true difference in means is not equal to 0
##95 percent confidence interval:
## -24.28669 -16.74114
##sample estimates:
##mean of x mean of y 
##48.07229  68.58621


#is this stat significant?
t.test(alive$age, dead$age, alternative = "two.sided", conf.level = 0.99)

##Welch Two Sample t-test

##data:  alive$age and dead$age
##t = -10.839, df = 72.234, p-value < 2.2e-16
##alternative hypothesis: true difference in means is not equal to 0
##99 percent confidence interval:
##-25.52122 -15.50661
##sample estimates:
##mean of x mean of y 
##48.07229  68.58621 

#normally, if p-value < 0.05, we reject null hypothesis
#here, p-value


#Gender


men = subset(data, gender == "male")
women = subset(data, gender == "female")

mean(men$death_dummy, na.rm = TRUE)
mean(women$death_dummy, na.rm = TRUE)

##> mean(men$death_dummy, na.rm = TRUE)
##[1] 0.08461538
##> mean(women$death_dummy, na.rm = TRUE)
##[1] 0.03664921

#is this statistically significant?
t.test(men$death_dummy, women$death_dummy, alternative = "two.sided", conf.level = 0.99)


##	Welch Two Sample t-test

##3data:  men$death_dummy and women$death_dummy
##t = 3.084, df = 894.06, p-value = 0.002105
##alternative hypothesis: true difference in means is not equal to 0
##99 percent confidence interval:
##0.007817675 0.088114665
##sample estimates:
##mean of x  mean of y 
##0.08461538 0.03664921 

#is this stat significant?
t.test(alive$age, dead$age, alternative = "two.sided", conf.level = 0.99)


##Welch Two Sample t-test

##data:  alive$age and dead$age
##t = -10.839, df = 72.234, p-value < 2.2e-16
##alternative hypothesis: true difference in means is not equal to 0
##399 percent confidence interval:
##-25.52122 -15.50661
##sample estimates:
##mean of x mean of y 
##48.07229  68.58621 
