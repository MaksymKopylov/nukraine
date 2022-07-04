library(tidyverse)
library(RColorBrewer)
library(haven)


dif <- as.data.frame(read.csv("OXF.csv", sep = ";"))
survey <- data.frame(job=as.factor(dif$V29), volunteer=as.factor(dif$V34))


ggplot(survey, aes(x=volunteer)) +
  geom_bar(aes(fill=job)) +
  scale_fill_brewer(palette="Pastel1")



