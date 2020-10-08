require "application_system_test_case"

class HabitListsTest < ApplicationSystemTestCase
  setup do
    @habit_list = habit_lists(:one)
  end

  test "visiting the index" do
    visit habit_lists_url
    assert_selector "h1", text: "Habit Lists"
  end

  test "creating a Habit list" do
    visit habit_lists_url
    click_on "New Habit List"

    fill_in "Habit", with: @habit_list.habit
    fill_in "Habit count", with: @habit_list.habit_count
    fill_in "Habit", with: @habit_list.habit_id
    check "Habitation" if @habit_list.habitation
    fill_in "User", with: @habit_list.user_id
    click_on "Create Habit list"

    assert_text "Habit list was successfully created"
    click_on "Back"
  end

  test "updating a Habit list" do
    visit habit_lists_url
    click_on "Edit", match: :first

    fill_in "Habit", with: @habit_list.habit
    fill_in "Habit count", with: @habit_list.habit_count
    fill_in "Habit", with: @habit_list.habit_id
    check "Habitation" if @habit_list.habitation
    fill_in "User", with: @habit_list.user_id
    click_on "Update Habit list"

    assert_text "Habit list was successfully updated"
    click_on "Back"
  end

  test "destroying a Habit list" do
    visit habit_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habit list was successfully destroyed"
  end
end
