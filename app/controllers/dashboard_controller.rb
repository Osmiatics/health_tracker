class DashboardController < ApplicationController
  def index
    # @net_daily_calories = Kilacal.net_daily_calories
    @daily_steps_weekly_comparison = DailyStep.steps_comparison
    # @weight_reduction_left = Weight.weight_left_until_goal
  end
end
