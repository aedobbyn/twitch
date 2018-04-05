library(RMySQL)
source(here("connect", "keys.R"))

twitch_db_con <- dbConnect(MySQL(),
                           username = twitch_db_username,
                           password = twitch_db_pw,
                           dbname = twitch_db_name, 
                           host = twitch_db_server,
                           port = 3306)
