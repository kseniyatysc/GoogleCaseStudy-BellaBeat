# Feature Engineering

Sleep_Day_clean <- Sleep_Day_clean %>%
  mutate(ActivityDate = as.Date(SleepDay))

Activity_Sleep <- Daily_Activity_clean %>%
  inner_join(Sleep_Day_clean,
             by = c("Id", "ActivityDate"))

dim(Activity_Sleep)


##  User-Level Aggregation

User_summary <- Activity_Sleep %>%
  group_by(Id) %>%
  summarise(
    avg_steps = mean(TotalSteps),
    avg_sleep = mean(TotalMinutesAsleep),
    avg_sleep_efficiency = mean(SleepEfficiency)
  )

