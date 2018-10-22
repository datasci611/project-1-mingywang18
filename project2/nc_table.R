library(tidyverse)
library(gridExtra)
library(kableExtra)

nc <- read.csv("/Users/wmy/Desktop/data611/KCLT.csv")

pos_record <- matrix(data=NA,nrow=365,ncol=2)
for (i in 1:365){
  if (nc$actual_max_temp[i]==nc$record_max_temp[i]) {pos_record[i,1]=i}
  if (nc$actual_min_temp[i]==nc$record_min_temp[i]) {pos_record[i,2]=i}
}
date_of_maximum_temperature=nc$date[complete.cases(pos_record[,1])]
date_of_minimum_temperature=nc$date[complete.cases(pos_record[,2])]
com=data.table::data.table(date_of_maximum_temperature,date_of_minimum_temperature)
write.csv(com,file='/Users/wmy/Desktop/data 611/nc_table.csv')
