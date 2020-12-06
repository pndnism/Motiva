require "application_system_test_case"

class HabitRecordsTest < ApplicationSystemTestCase
  setup do
    @habit_record = habit_records(:one)
  end

  test "visiting the index" do
    visit habit_records_url
    assert_selector "h1", text: "Habit Records"
  end

  test "creating a Habit record" do
    visit habit_records_url
    click_on "New Habit Record"

    fill_in "Count", with: @habit_record.count
    fill_in "Date", with: @habit_record.date
    fill_in "Done", with: @habit_record.done
    fill_in "Habit", with: @habit_record.habit
    fill_in "Habit no", with: @habit_record.habit_no
    fill_in "Userid", with: @habit_record.userid
    click_on "Create Habit record"

    assert_text "Habit record was successfully created"
    click_on "Back"
  end

  test "updating a Habit record" do
    visit habit_records_url
    click_on "Edit", match: :first

    fill_in "Count", with: @habit_record.count
    fill_in "Date", with: @habit_record.date
    fill_in "Done", with: @habit_record.done
    fill_in "Habit", with: @habit_record.habit
    fill_in "Habit no", with: @habit_record.habit_no
    fill_in "Userid", with: @habit_record.userid
    click_on "Update Habit record"

    assert_text "Habit record was successfully updated"
    click_on "Back"
  end

  test "destroying a Habit record" do
    visit habit_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habit record was successfully destroyed"
  end
end
