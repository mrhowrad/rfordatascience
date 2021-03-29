#Get the data
install.packages("tidytuesdayR")
library(tidyverse)
tuesdata <- tidytuesdayR::tt_load(2021, week = 9)
head(tuesdata)
unique(tuesdata$employed$race_gender)
employed <- tuesdata$employed
employed %>%
  filter(!(race_gender %in% c("TOTAL","Men","Women"))) %>%
  filter(industry %in% c("Construction", "Financial activities")) %>%
  ggplot(mapping=aes(x=race_gender, y=employ_n)) + geom_col(aes(colour=industry))
?geom_col
       