#Summarize Annual Daily Mean
o3summarize_adm <- function(x){
  x$yr<- str_extract(x$date,"\\d{4}")
  out <- group_by(x, site = as.factor(site), Year = as.factor(yr)) %>%
    summarize(o3_annual_mean = mean(o3, na.rm = TRUE))
}