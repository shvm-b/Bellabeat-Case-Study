CREATE OR REPLACE TABLE `daring-pier-473005-n6.fitbit_fitness_tracker_data.daily_activity_duplicate_sum` AS

SELECT
  Id,
  ActivityDate,
  
  SUM(TotalSteps) AS TotalSteps,
  SUM(TotalDistance) AS TotalDistance,
  SUM(TrackerDistance) AS TrackerDistance,
  SUM(LoggedActivitiesDistance) AS LoggedActivitiesDistance,

  SUM(VeryActiveDistance) AS VeryActiveDistance,
  SUM(ModeratelyActiveDistance) AS ModeratelyActiveDistance,
  SUM(LightActiveDistance) AS LightActiveDistance,
  SUM(SedentaryActiveDistance) AS SedentaryActiveDistance,
  
  SUM(VeryActiveMinutes) AS VeryActiveMinutes,
  SUM(FairlyActiveMinutes) AS FairlyActiveMinutes,
  SUM(LightlyActiveMinutes) AS LightlyActiveMinutes,
  SUM(SedentaryMinutes) AS SedentaryMinutes,
  
  SUM(Calories) AS Calories

FROM `daring-pier-473005-n6.fitbit_fitness_tracker_data.daily_activity`

GROUP BY Id, ActivityDate

HAVING COUNT(*) > 1