require "test_helper"

class PTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get p_tasks_index_url
    assert_response :success
  end

  test "should get create" do
    get p_tasks_create_url
    assert_response :success
  end

  test "should get edit" do
    get p_tasks_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get p_tasks_destroy_url
    assert_response :success
  end
end
