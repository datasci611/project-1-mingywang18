library(tidyverse)
library(gridExtra)
library(kableExtra)
source("/Users/wmy/Desktop/data611/summary_extreme_function.R")

nc_summary <- summary_extreme(nc,"Charlotte, N.C.")
ny_summary <- summary_extreme(ny,"New York")
la_summary <- summary_extreme(la,"Los Angeles")
jack_summary <- summary_extreme(jack,"Jacksonville, Florida")
table=rbind(nc_summary,ny_summary,la_summary,jack_summary)