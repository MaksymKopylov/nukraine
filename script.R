library(tidyverse)
library(RColorBrewer)
library(haven)


dif <- as.data.frame(read.csv("OXF.csv", sep = ";"))
survey <- data.frame(job=as.factor(dif$V29), volunteer=as.factor(dif$V34))


ggplot(survey, aes(x=volunteer)) +
  geom_bar(aes(fill=job)) +
  scale_fill_brewer(palette="Pastel1")



``` {r, warning=FALSE}

gig <- as.data.frame(read.csv("google.csv", sep = ";"))
google <- data.frame(Search_Ukraine=as.numeric(as.character(gig$Search_Ukraine)), Week=as.Date(gig$Week))

ggplot(google, aes(Week, Search_Ukraine)) +
  geom_area(fill="#dea5a4")

```