require "application_system_test_case"

class WorkListsTest < ApplicationSystemTestCase
  setup do
    @work_list = work_lists(:one)
  end

  test "visiting the index" do
    visit work_lists_url
    assert_selector "h1", text: "Work Lists"
  end

  test "creating a Work list" do
    visit work_lists_url
    click_on "New Work List"

    click_on "Create Work list"

    assert_text "Work list was successfully created"
    click_on "Back"
  end

  test "updating a Work list" do
    visit work_lists_url
    click_on "Edit", match: :first

    click_on "Update Work list"

    assert_text "Work list was successfully updated"
    click_on "Back"
  end

  test "destroying a Work list" do
    visit work_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work list was successfully destroyed"
  end
end
