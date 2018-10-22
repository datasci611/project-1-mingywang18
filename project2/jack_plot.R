library(tidyverse)
library(gridExtra)
library(kableExtra)

source("/Users/wmy/Desktop/data611/plot_yrtemp_function.R")

nc <- read.csv("/Users/wmy/Desktop/data611/KJAX.csv")

plot_temp(jack,"Jacksonville, Florida")
ggsave("jack_plot.png")
