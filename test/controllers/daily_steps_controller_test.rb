require 'test_helper'

class DailyStepsControllerTest < ActionController::TestCase
  setup do
    @daily_step = daily_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
