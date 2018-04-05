
source(here("utils", "load_packages.R"))
source(here("connect", "keys.R"))
dobtools::import_scripts(here("utils"))

twitch_db_con <- dbConnect(MySQL(),
                           username = twitch_db_username,
                           password = twitch_db_pw,
                           dbname = twitch_db_name, 
                           host = twitch_db_server,
                           port = 3306)
