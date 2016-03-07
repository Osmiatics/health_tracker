class DailyExercise < ActiveRecord::Base
  belongs_to :exercise_type
  def self.calories_burned
    duration = where(date: Date.today.to_s).select(:duration)
    # calories = where(date: Date.today.to_s).select(:exercise_type_id)
  end
end
