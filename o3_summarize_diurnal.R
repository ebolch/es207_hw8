o3summarize_diurnal <- function(x){
  x$yr<- str_extract(x$date,"\\d{4}")
  x$mon <- str_sub(x$date, 6,-4)
  x$time <- ifelse(x$start_hour >= 7 & x$start_hour<= 19, "day", "night")
  
  out <- group_by(x, site = as.factor(site), Year = as.factor(yr), Month = as.factor(mon),Time = time) %>%
    summarize(o3 = mean(obs, na.rm = TRUE))
}