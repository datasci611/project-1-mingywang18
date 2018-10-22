library(tidyverse)
library(gridExtra)
library(kableExtra)

source("/Users/wmy/Desktop/data611/plot_yrtemp_function.R")

nc <- read.csv("/Users/wmy/Desktop/data611/KCQT.csv")

plot_temp(la,"Los Angeles")
ggsave("la_plot.png")
