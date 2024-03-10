# Project-2-COVID-19-Death-Analysis-using-R

![patient-getting-covid-test](https://github.com/karolyamar21/Project-2-COVID-19-Death-Analysis-using-R/assets/137465006/684483fd-bf64-434b-a435-c0719ab68b6b)


## Scenario:

 To check if Gender and age are statistically significant on death rate of COVID 19

## Ask:

1. To check media claims that older people are more likely to die due to COVID-19 than younger people
2. To check data if men and women have similar death rate

## Prepare:

1.Files: Dateset from Kaggle

[COVID19_line_list_data.csv](https://github.com/karolyamar21/Project-2-COVID-19-Death-Analysis-using-R/files/14549538/COVID19_line_list_data.csv)

[GET CODE](https://github.com/karolyamar21/Project-2-COVID-19-Death-Analysis-using-R)



## Process: 

Tools: 
R Studio
Using T-test to get P-Value

## Analysis

### Age

Welch Two Sample t-test

data:  alive$age and dead$age
t = -10.839, df = 72.234, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
399 percent confidence interval:
-25.52122 -15.50661
sample estimates:
mean of x mean of y 
48.07229  68.58621




### Gender

Welch Two Sample t-test

data:  men$death_dummy and women$death_dummy
t = 3.084, df = 894.06, p-value = 0.002105
alternative hypothesis: true difference in means is not equal to 0
99 percent confidence interval:
0.007817675 0.088114665
sample estimates:
mean of x  mean of y 
0.08461538 0.03664921

## Share

1. People who are not dead are between 15-25 while those who die of COVID-19 are 48 to 68 years old
2. Data shows men have death rate of 8.5% vs women with 3.7%
3. With p-value of 0.002105 which is less than  .05 this means it is considered to be statistically significant, in which case the null hypothesis should be rejected.


## Act

1. People ages 48 to 68 years old should be more cautious oF their surrounding and have their self-check for possible chronic conditions that will make illness from COVID-19 even worse.
2. Men have higer coronavirus death rate due to more unhealthy habits that women

For further questions: karolineyamar@gmail.com karoleyamar@yahoo.com

Reference: Youtube: @techtribe
