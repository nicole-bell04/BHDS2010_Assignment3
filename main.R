#Assignment 3: Collaborating in GitHub

install.packages("reshape")
install.packages("pastecs")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("Hmisc")
library(reshape)
library(pastecs)
library(dplyr)
library(ggplot2)
library(Hmisc)

Boxplot-Visualizations
#boxplot of scores by time faceted by group#####
#To construct a boxplot that not only shows the change in texting habits over a 
#period of six months, but also shows the difference between Group 1 and Group 
#2's change in texting, a faceted approach is used.  
boxplot_text <- text_long %>% ggplot(aes(Time, Text_Messages, fill=Time))+
  geom_boxplot()+  
  labs(x="Change in Texting Habits by Group", y="Number of Texts")+
  scale_y_continuous(breaks=seq(from=0, to=90, by=4))+
  facet_wrap(Group~.)

#To view the faceted boxplot, the object is re-typed.
boxplot_text
#From this, we are able to see that Group 2 had the both the highest and lowest
#baseline texting scores, as well as the highest score after six months, while 
#Group 1 had the lowest score after six months. Group 2 has baseline scores that
#appear to be approximately normally distributed, whereas Group 1 appears to
#have a slightly right skewed distribution. However, both follow-up scores are 
#noticeably left skewed. Both groups had a noticeable decrease in the number of 
#text messages sent after six months, with Group 1 appearing to have a greater 
#decrease in median scores (from 64 to 58 versus 65 to 62). Although Group 1 has  
#a slightly lower median baseline score than Group 2, its interquartile range 
#is slightly greater, suggesting a greater spread throughout the middle 50% of
#the data. Further, Group 1 had considerably low outliers in its six month
#scores, whereas Group 2 had multiple high outliers. Finally, both groups 
#have a much smaller interquartile range at six months compared to their 
#baseline scores, consistent with a smaller amount of variability among the 
#middle 50% of follow-up scores. 


Bar-Chart-Visualizations
#Similarly, to construct a bar graph that displays a side-by-side comparison of 
#the average baseline score and the average six month score for Groups 1 and 2, 
#a faceted approach is used once more. An error bar is also included to depict
#the 95% confidence interval for each score's average. 
barchart_text <- text_long %>% ggplot(aes(Time, Text_Messages, fill=Time))+
  stat_summary(fun=mean, geom="bar")+
  facet_wrap(Group~.)+
  scale_y_continuous(breaks=seq(from=0, to=100, by=4))+
  stat_summary(fun.data = mean_cl_boot, geom= "pointrange", colour="Black")+
  labs(x="Average Change in Texting Habits by Group", y="Number of Texts")

#To view the bar chart, the object is re-typed.
barchart_text
#Beginning with the baseline scores, we are able to see that Group 1 has a 
#slightly lower average score than Group 2, of approximately 64.9 versus 65.8,
#although further summary statistics will provide more precise averages. 
#Group 2 appears to have a slightly larger 95% confidence interval than Group 1,
#suggesting it may have a marginally greater standard deviation since both 
#group have the same sample size. Both groups exhibit a decrease in average 
#texting scores after six months, with Group 1 not only having a smaller average
#follow-up score than Group 2 (of approximately 53 versus 65), but also a much
#greater decrease in average scores of around 12 versus 4. Unlike the baseline
#scores, we can see that the six month scores have a larger difference between
#the two 95% confidence intervals, with Group 1 having a greater distribution
#of scores about the mean than Group 2. From this, we can conclude that Group
#1 also had a greater change in variability than Group 2 after six months. 



