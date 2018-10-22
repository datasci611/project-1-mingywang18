library(tidyverse)
library(gridExtra)
library(kableExtra)

plot_temp <- function(data,state){
  #read in temperature
  clt <- data %>%
    mutate(number = c(1:365)) 
  
  #find min and max temperature
  min_temp = min(clt$actual_mean_temp)
  min_temp_x = clt$number[clt$actual_mean_temp==min_temp]
  max_temp = max(clt$actual_mean_temp)
  max_temp_x = clt$number[clt$actual_mean_temp==max_temp]
  min_temp_x_unique = min(min_temp_x)
  max_temp_x_unique = min(max_temp_x)
  
  
  ##plot temperature~month
  ggplot(data = clt, aes(x = number,y = actual_mean_temp))+
    geom_smooth(alpha = 0.5,size = 1.2,method = "loess",col = "brown")+
    geom_linerange(aes(ymin = actual_min_temp,ymax = actual_max_temp),alpha = 0.25,col = "brown")+
    geom_linerange(aes(ymin = record_min_temp,ymax = record_max_temp),alpha = 0.15,col="brown")+
    labs(
      title = state,
      x = expression(paste("")),
      y = expression(paste("Temperature", "(°F)")),
      color = "Grass origin"
    )+
    scale_x_continuous(breaks = seq(0,365,31),
                       labels = c("Jul","Aug","Sept","Oct","Nov","Dec","Jan","Feb","Mar","Apr","May","Jun"))+
    scale_y_continuous(breaks = seq(0,100,10),
                       labels = paste(seq(0,100,10),"°F"))+
    annotate('text', label = str_c("Lowest:",min_temp,"°F"), x = min_temp_x_unique, y = min_temp-5)+
    annotate('text', label = str_c("Highest:",max_temp,"°F"), x = max_temp_x_unique, y = max_temp+5)+
    theme_light()
}
