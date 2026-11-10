#Assignment 3: Collaborating in GitHub
library(dplyr)
library(ggplot2)

text$Group <- as.factor(text$Group)

boxplot_text <- text %>% ggplot(aes(Group, Baseline))+
  geom_boxplot(fill="lightpink")+ 
  labs(x="Group", y="Baseline Texting Amount")

boxplot_text
