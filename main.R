#Assignment 3: Collaborating in GitHub

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


