library(tidyverse)
library(gridExtra)
library(kableExtra)

source("/Users/wmy/Desktop/data611/plot_yrtemp_function.R")
nc <- read.csv("/Users/wmy/Desktop/data611/KCLT.csv")


plot_temp(nc,"Charlotte, N.C.")
ggsave("nc_plot.png")


