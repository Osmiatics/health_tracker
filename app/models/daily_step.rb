class DailyStep < ActiveRecord::Base
  attr_reader :amount
  def self.average
    sum(:amount) / group(:date).length
  end
end
