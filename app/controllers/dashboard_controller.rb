class DashboardController < ApplicationController
  def index
    # @net_daily_calories = Kilacal.net_daily_calories
    @daily_steps_average = DailyStep.average
    # @weight_reduction_left = Weight.weight_left_until_goal
  end
end
