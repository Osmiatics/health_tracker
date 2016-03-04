class Kilocal < ActiveRecord::Base

  def self.kilocal_left_until_goal
    Kilocal.daily_goal - Kilocal.daily_total
  end

end
