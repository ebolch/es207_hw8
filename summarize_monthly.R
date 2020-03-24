#Summarize Monthly (works on O3 Dataset)
o3summarize_monthly <- function(x){
  x$yr<- str_extract(x$date,"\\d{4}")
  x$mon <- str_sub(x$date, 6,-4)
  
  out <- group_by(x, site = as.factor(site), Year = as.factor(yr), Month = as.factor(mon)) %>%
    summarize(o3 = mean(obs, na.rm = TRUE))
}