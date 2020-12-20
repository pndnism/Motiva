require "application_system_test_case"

class ProjectListsTest < ApplicationSystemTestCase
  setup do
    @project_list = project_lists(:one)
  end

  test "visiting the index" do
    visit project_lists_url
    assert_selector "h1", text: "Project Lists"
  end

  test "creating a Project list" do
    visit project_lists_url
    click_on "New Project List"

    fill_in "Personal project", with: @project_list.personal_project_id
    fill_in "Project", with: @project_list.project
    fill_in "User", with: @project_list.user_id
    click_on "Create Project list"

    assert_text "Project list was successfully created"
    click_on "Back"
  end

  test "updating a Project list" do
    visit project_lists_url
    click_on "Edit", match: :first

    fill_in "Personal project", with: @project_list.personal_project_id
    fill_in "Project", with: @project_list.project
    fill_in "User", with: @project_list.user_id
    click_on "Update Project list"

    assert_text "Project list was successfully updated"
    click_on "Back"
  end

  test "destroying a Project list" do
    visit project_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project list was successfully destroyed"
  end
end
