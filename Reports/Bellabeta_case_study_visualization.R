library(ggplot2)
library(tidyverse)

# 1. Distribution of Daily Steps
ggplot(daily_sleep_activity, aes(x=total_steps)) +
  geom_histogram(binwidth = 1000, fill = "skyblue", color = "black") +
  labs(title="Distribution of Daily Steps",
       x="Steps per Day", y="Number of Records")

# 2. Sedentary vs Active Minutes

ggplot(activity_summary, aes(x=reorder(activity_type, -minutes), y=minutes, fill=activity_type)) +
  geom_col() +
  labs(title="Average Daily Minutes by Activity Type",
       x="Activity Type", y="Minutes")


# 3. Steps vs Calories
ggplot(daily_sleep_activity, aes(x=total_steps, y=calories)) +
  geom_point(alpha=0.6, color="darkgreen") +
  geom_smooth(method="lm", color="red") +
  labs(title="Steps vs Calories Burned",
       x="Total Steps", y="Calories")

# 4. Average Sleep Duration
ggplot(daily_sleep_activity, aes(x=total_minutes_asleep/60)) +
  geom_histogram(fill="purple", bins=20, color="black") +
  geom_vline(xintercept=7, color="red", linetype="dashed", size=1.2) +
  geom_vline(xintercept=8, color="green", linetype="dashed", size=1.2) +
  labs(title="Distribution of Sleep Duration",
       x="Hours of Sleep", y="Count") +
  theme_minimal()


# 5. Weekday vs Weekend Steps
ggplot(daily_activity, aes(x=day_type, y=avg_steps, fill=day_type)) +
  geom_col() +
  labs(title="Average Steps: Weekday vs Weekend",
       x="Day Type", y="Average Steps")


