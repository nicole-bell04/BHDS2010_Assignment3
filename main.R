#Assignment 3: Collaborating in GitHub

barchart_text <- long_text %>% ggplot(aes(Time, Score, fill=Time))+
  stat_summary(fun=mean, geom="bar")+
  facet_wrap(Group~.)+
  labs(x="Change in Texting Habits by Group", y="Number of Texts")


barchart_text
