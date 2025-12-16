DELETE FROM `daring-pier-473005-n6.fitbit_fitness_tracker_data.daily_activity` AS main
WHERE EXISTS (
  SELECT 1
  FROM `daring-pier-473005-n6.fitbit_fitness_tracker_data.daily_activity_duplicate_sum` AS temp
  WHERE 
    temp.Id = main.Id
    AND temp.ActivityDate = main.ActivityDate
);
