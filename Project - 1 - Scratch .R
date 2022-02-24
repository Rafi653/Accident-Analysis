
setwd("/Users/mohammad.rafi.shaik/Desktop/NEU/FDA - IE_5374/Project-1")

c_df = read.csv('Traffic_Crashes_-_Crashes.csv')

dim(c_df)

summary(c_df)

p_df = read.csv('Traffic_Crashes_-_People.csv')

dim(p_df)

summary(p_df)

v_df = read.csv('Traffic_Crashes_-_Vehicles.csv')

dim(v_df)

summary(v_df)


# Distribution per day and hour:


library(dplyr)

library(lubridate)
c_df['n_crash_date'] = mdy_hms(c_df$CRASH_DATE)

weekdays(c_df$n_crash_date)

day(c_df$n_crash_date)

c_df %>%
  group_by(weekdays(n_crash_date)) %>%
  summarise(total_crahes = n())



c_df %>%
  group_by(day(n_crash_date)) %>%
  summarise(total_crahes = n())

  