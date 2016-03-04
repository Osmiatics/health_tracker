class Weight < ActiveRecord::Base

  def self.weight_left_until_goal
    self.daily_weight - @goal_weight
  end

end
