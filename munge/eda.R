
source(here("connect", "keys.R"))
dobtools::import_scripts(here("utils"))

# Load in data
get_data()

# Set types
fortnite <- fortnite_raw %>% 
  drop_na(fetch_timestamp) %>% 
  mutate(
    fetch_timestamp_utc = lubridate::as_datetime(fetch_timestamp)
  ) %>% 
  dobtools::set_col_types(fac_regex = "stream_type|stream_game|channel_status|channel_language",
                          num_regex = "id|channel_views",
                          datetm_regex = "stream_created_at|channel_created_at|channel_updated_at")


# First look at thing of interest
ggplot(fortnite[1:100, ]) +
  geom_smooth(aes(fetch_timestamp, channel_views))


# Channel info
channel_info_dict <- fortnite %>% 
  select(starts_with("channel")) %>% 
  arrange(desc(channel_views))

# Some dupes but not many, pretty 1:1
channel_id_dict <- fortnite %>% 
  select(channel_id, channel_display_name) %>% 
  distinct()








