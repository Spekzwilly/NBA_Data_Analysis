library(readr)
library(dplyr)
library(ggplot2)
data = read.csv("NBA_adv.csv")
glimpse(data)

data_over_20_g <- data %>%
  filter(G >= 20, Pos == "PG", PER >= 20)

head(data_over_20_g, 10)
  
data_ws_48 <- data_over_20_g %>% 
  select(Player, Age, PER, TS., WS.48) %>%
  arrange(desc(WS.48))

head(data_ws_48, 20)

ggplot(data, aes(y = PER)) +
  geom_boxplot()
