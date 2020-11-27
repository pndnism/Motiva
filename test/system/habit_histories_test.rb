require "application_system_test_case"

class HabitHistoriesTest < ApplicationSystemTestCase
  setup do
    @habit_history = habit_histories(:one)
  end

  test "visiting the index" do
    visit habit_histories_url
    assert_selector "h1", text: "Habit Histories"
  end

  test "creating a Habit history" do
    visit habit_histories_url
    click_on "New Habit History"

    click_on "Create Habit history"

    assert_text "Habit history was successfully created"
    click_on "Back"
  end

  test "updating a Habit history" do
    visit habit_histories_url
    click_on "Edit", match: :first

    click_on "Update Habit history"

    assert_text "Habit history was successfully updated"
    click_on "Back"
  end

  test "destroying a Habit history" do
    visit habit_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habit history was successfully destroyed"
  end
end
