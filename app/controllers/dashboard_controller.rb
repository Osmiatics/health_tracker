class DashboardController < ApplicationController
  def index
    @net_daily_calories = Kilacal.
    @daily_steps_weekly_comparison = DailyStep.
    @weight_reduction_left = Weight.
  end
end
