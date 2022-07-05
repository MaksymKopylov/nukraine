library(tidyverse)
library(RColorBrewer)
library(haven)


dif <- as.data.frame(read.csv("OXF.csv", sep = ";"))
survey <- data.frame(job=as.factor(dif$V29), volunteer=as.factor(dif$V34))


ggplot(survey, aes(x=volunteer)) +
  geom_bar(aes(fill=job)) +
  scale_fill_brewer(palette="Pastel1")



ggplot(survey2, aes(volunteer)) + 
  geom_bar(aes(y = (..count..)/sum(..count..)), fill = "#FDDB52") + 
  scale_y_continuous(labels=scales::percent) +
  ylab("% of all respondents") +
  scale_x_discrete(labels = c("Так, допомагав/-ла фізично", 
                              "Так, допомагав/-ла фінансово", "Так, допомагав/-ла фізично і фінансово",
                              "Ні, але планую фізично допомагати",
                              "Ні, але планую долучатися до фінансової допомоги",
                              "Ні але планую долучатися до фізичної і фінансової допомоги",
                              "Ні, і не планую долучатися",
                              "Важко відповісти"))
  

