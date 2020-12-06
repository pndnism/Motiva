require 'test_helper'

class HabitListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habit_list = habit_lists(:one)
  end

  test "should get index" do
    get habit_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_habit_list_url
    assert_response :success
  end

  test "should create habit_list" do
    assert_difference('HabitList.count') do
      post habit_lists_url, params: { habit_list: { count: @habit_list.count, donehabit: @habit_list.donehabit, habit: @habit_list.habit, habit_no: @habit_list.habit_no, userid: @habit_list.userid } }
    end

    assert_redirected_to habit_list_url(HabitList.last)
  end

  test "should show habit_list" do
    get habit_list_url(@habit_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_habit_list_url(@habit_list)
    assert_response :success
  end

  test "should update habit_list" do
    patch habit_list_url(@habit_list), params: { habit_list: { count: @habit_list.count, donehabit: @habit_list.donehabit, habit: @habit_list.habit, habit_no: @habit_list.habit_no, userid: @habit_list.userid } }
    assert_redirected_to habit_list_url(@habit_list)
  end

  test "should destroy habit_list" do
    assert_difference('HabitList.count', -1) do
      delete habit_list_url(@habit_list)
    end

    assert_redirected_to habit_lists_url
  end
end
