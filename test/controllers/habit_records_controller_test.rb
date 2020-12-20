require 'test_helper'

class HabitRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habit_record = habit_records(:one)
  end

  test "should get index" do
    get habit_records_url
    assert_response :success
  end

  test "should get new" do
    get new_habit_record_url
    assert_response :success
  end

  test "should create habit_record" do
    assert_difference('HabitRecord.count') do
      post habit_records_url, params: { habit_record: { count: @habit_record.count, date: @habit_record.date, done: @habit_record.done, habit_id: @habit_record.habit_id } }
    end

    assert_redirected_to habit_record_url(HabitRecord.last)
  end

  test "should show habit_record" do
    get habit_record_url(@habit_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_habit_record_url(@habit_record)
    assert_response :success
  end

  test "should update habit_record" do
    patch habit_record_url(@habit_record), params: { habit_record: { count: @habit_record.count, date: @habit_record.date, done: @habit_record.done, habit_id: @habit_record.habit_id } }
    assert_redirected_to habit_record_url(@habit_record)
  end

  test "should destroy habit_record" do
    assert_difference('HabitRecord.count', -1) do
      delete habit_record_url(@habit_record)
    end

    assert_redirected_to habit_records_url
  end
end
