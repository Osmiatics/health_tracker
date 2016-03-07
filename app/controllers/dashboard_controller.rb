class DashboardController < ApplicationController
  def index
    @net_daily_calories = Kilocal.net_daily_calories
    @exercise_calories = DailyExercise.calories_burned
    @daily_steps_average = DailyStep.average
  end
end
