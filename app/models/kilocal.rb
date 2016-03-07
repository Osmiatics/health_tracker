class Kilocal < ActiveRecord::Base

  def self.kilocal_left_until_goal
    Kilocal.daily_goal - Kilocal.daily_total
  end

  def self.net_daily_calories
    calorie_intake = where(date: Date.today.to_s).sum(:daily_intake)
  end

end
