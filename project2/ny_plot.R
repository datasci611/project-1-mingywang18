library(tidyverse)
library(gridExtra)
library(kableExtra)

source("/Users/wmy/Desktop/data611/plot_yrtemp_function.R")

nc <- read.csv("/Users/wmy/Desktop/data611/KNYC.csv")

plot_temp(ny,"New York")
ggsave("ny_plot.png")
