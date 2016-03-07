require 'test_helper'
require 'minitest/pride'

class DailyStepTest < ActiveSupport::TestCase
  test "daily steps exist" do
    assert DailyStep
  end

  test "find total number of step entries" do
    assert_equal 10, DailyStep.count
  end

  test "find average daily steps" do
    assert_equal 5720, DailyStep.average
  end
end
