#Assignment 3: Collaborating in GitHub

#data preparation ONLY for the purposes of the boxplot, NOT to go into the main####
library(dplyr)
library(ggplot2)
library(reshape)
long_text <- melt(text, id.vars=c("Participant", "Group"), variable.name="Time", 
                          value.name="Score")
colnames(long_text) <- c("Participant", "Group", "Time", "Score")

long_text$Time <- as.factor(long_text$Time)

#boxplot of scores by time faceted by group#####
boxplot_text <- long_text %>% ggplot(aes(Time, Score, fill=Time))+
  geom_boxplot()+  facet_wrap(Group~.)


boxplot_text
