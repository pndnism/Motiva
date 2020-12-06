require 'test_helper'

class WorkListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_list = work_lists(:one)
  end

  test "should get index" do
    get work_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_work_list_url
    assert_response :success
  end

  test "should create work_list" do
    assert_difference('WorkList.count') do
      post work_lists_url, params: { work_list: { project: @work_list.project, project_no: @work_list.project_no } }
    end

    assert_redirected_to work_list_url(WorkList.last)
  end

  test "should show work_list" do
    get work_list_url(@work_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_list_url(@work_list)
    assert_response :success
  end

  test "should update work_list" do
    patch work_list_url(@work_list), params: { work_list: { project: @work_list.project, project_no: @work_list.project_no } }
    assert_redirected_to work_list_url(@work_list)
  end

  test "should destroy work_list" do
    assert_difference('WorkList.count', -1) do
      delete work_list_url(@work_list)
    end

    assert_redirected_to work_lists_url
  end
end
