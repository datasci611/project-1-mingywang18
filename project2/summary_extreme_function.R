library(tidyverse)
library(gridExtra)
library(kableExtra)

summary_extreme <- function(data,name) {
  data %>%
    mutate(large_than_record = (actual_max_temp - average_max_temp),
           small_than_record = (average_min_temp - actual_min_temp),
           max_large = max(large_than_record),
           max_small = max(small_than_record),
           num_large = sum(ifelse(large_than_record>0,1,0)),
           num_small = sum(ifelse(small_than_record>0,1,0)),
           state = name) %>%
    select(state,max_large,max_small,num_large,num_small) %>%
    distinct()
}