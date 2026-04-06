
# Reading data files
Daily_Activity <- read_csv("../Data/dailyActivity_merged.csv")
Sleep_Day <- read_csv("../Data/sleepDay_merged.csv")



# Remove duplicates from sleep data
Sleep_Day_clean <- Sleep_Day %>%
  distinct(Id, SleepDay, .keep_all = TRUE)

# Convert date-time format for sleep data
Sleep_Day_clean <- Sleep_Day_clean %>%
  mutate(SleepDay = as.POSIXct(SleepDay, format = "%m/%d/%Y %I:%M:%S %p"))

# Convert activity date to Date format
Daily_Activity_clean <- Daily_Activity %>%
  mutate(ActivityDate = as.Date(ActivityDate, format = "%m/%d/%Y"))




#Daily_Activity Validation
Daily_Activity_clean <- Daily_Activity_clean %>%
  filter(
    TotalSteps >= 0,
    SedentaryMinutes <= 1440,
    LightlyActiveMinutes >= 0,
    FairlyActiveMinutes >= 0,
    VeryActiveMinutes >= 0
  )
#Sleep_Day Validation
Sleep_Day_clean <- Sleep_Day_clean %>%
  filter(
    TotalMinutesAsleep > 0,
    between(TotalTimeInBed, 1, 1440),
    TotalMinutesAsleep <= TotalTimeInBed
  )
Sleep_Day_clean <- Sleep_Day_clean %>%
  mutate(
    SleepEfficiency = TotalMinutesAsleep / TotalTimeInBed
  )
summary(Sleep_Day_clean$SleepEfficiency)
