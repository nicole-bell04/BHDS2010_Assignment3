#Assignment 3: Collaborating in GitHub

#data preparation ONLY for the purposes of the boxplot, NOT to go into the main####
library(dplyr)
library(ggplot2)
library(reshape)
library(pastecs)
long_text <- melt(text, id.vars=c("Participant", "Group"), variable.name="Time", 
                          value.name="Score")
colnames(long_text) <- c("Participant", "Group", "Time", "Score")

long_text$Time <- as.factor(long_text$Time)

#boxplot of scores by time faceted by group#####
#To construct a boxplot that not only shows the change in texting habits over a 
#period of six months, but also shows the difference between Group 1 and Group 
#2's change in texting, a faceted approach is used.  
boxplot_text <- long_text %>% ggplot(aes(Time, Score, fill=Time))+
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


