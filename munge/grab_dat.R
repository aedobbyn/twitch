library(tidyverse)
library(here)
library(feather)

source(here("connect", "connect.R"))

fortnite_raw <- dbGetQuery(twitch_db_con,    
                     "SELECT * FROM fortnite") %>% as_tibble()

write_feather(fortnite_raw, here("data", "raw", "fortnite_raw.feather"))

fortnite <- fortnite_raw %>% 
  drop_na(fetch_timestamp) 

fortnite$fetch_timestamp <- 

ggplot(fortnite) +
  geom_smooth(aes(fetch_timestamp, channel_views))