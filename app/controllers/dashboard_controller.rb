class DashboardController < ApplicationController
  def index
    @daily_steps_average = DailyStep.average
  end
end
