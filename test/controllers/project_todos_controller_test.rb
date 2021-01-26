require 'test_helper'

class ProjectTodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_todo = project_todos(:one)
  end

  test "should get index" do
    get project_todos_url
    assert_response :success
  end

  test "should get new" do
    get new_project_todo_url
    assert_response :success
  end

  test "should create project_todo" do
    assert_difference('ProjectTodo.count') do
      post project_todos_url, params: { project_todo: { project_id: @project_todo.project_id, todo_id: @project_todo.todo_id } }
    end

    assert_redirected_to project_todo_url(ProjectTodo.last)
  end

  test "should show project_todo" do
    get project_todo_url(@project_todo)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_todo_url(@project_todo)
    assert_response :success
  end

  test "should update project_todo" do
    patch project_todo_url(@project_todo), params: { project_todo: { project_id: @project_todo.project_id, todo_id: @project_todo.todo_id } }
    assert_redirected_to project_todo_url(@project_todo)
  end

  test "should destroy project_todo" do
    assert_difference('ProjectTodo.count', -1) do
      delete project_todo_url(@project_todo)
    end

    assert_redirected_to project_todos_url
  end
end
