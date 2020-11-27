require 'test_helper'

class HabitHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habit_history = habit_histories(:one)
  end

  test "should get index" do
    get habit_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_habit_history_url
    assert_response :success
  end

  test "should create habit_history" do
    assert_difference('HabitHistory.count') do
      post habit_histories_url, params: { habit_history: {  } }
    end

    assert_redirected_to habit_history_url(HabitHistory.last)
  end

  test "should show habit_history" do
    get habit_history_url(@habit_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_habit_history_url(@habit_history)
    assert_response :success
  end

  test "should update habit_history" do
    patch habit_history_url(@habit_history), params: { habit_history: {  } }
    assert_redirected_to habit_history_url(@habit_history)
  end

  test "should destroy habit_history" do
    assert_difference('HabitHistory.count', -1) do
      delete habit_history_url(@habit_history)
    end

    assert_redirected_to habit_histories_url
  end
end
