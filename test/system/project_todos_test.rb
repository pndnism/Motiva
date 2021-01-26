require "application_system_test_case"

class ProjectTodosTest < ApplicationSystemTestCase
  setup do
    @project_todo = project_todos(:one)
  end

  test "visiting the index" do
    visit project_todos_url
    assert_selector "h1", text: "Project Todos"
  end

  test "creating a Project todo" do
    visit project_todos_url
    click_on "New Project Todo"

    fill_in "Project", with: @project_todo.project_id
    fill_in "Todo", with: @project_todo.todo_id
    click_on "Create Project todo"

    assert_text "Project todo was successfully created"
    click_on "Back"
  end

  test "updating a Project todo" do
    visit project_todos_url
    click_on "Edit", match: :first

    fill_in "Project", with: @project_todo.project_id
    fill_in "Todo", with: @project_todo.todo_id
    click_on "Update Project todo"

    assert_text "Project todo was successfully updated"
    click_on "Back"
  end

  test "destroying a Project todo" do
    visit project_todos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project todo was successfully destroyed"
  end
end
