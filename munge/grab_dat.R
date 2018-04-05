
source(here("connect", "connect.R"))

fortnite_raw <- dbGetQuery(twitch_db_con,    
                     "SELECT * FROM fortnite") %>% as_tibble()

# write_feather(fortnite_raw, here("data", "raw", "fortnite_raw.feather"))

