json.array!(@daily_exercises) do |daily_exercise|
  json.extract! daily_exercise, :id, :exercise_type_id, :duration, :date
  json.url daily_exercise_url(daily_exercise, format: :json)
end
