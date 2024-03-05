require "test_helper"

class PUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get p_users_show_url
    assert_response :success
  end

  test "should get create" do
    get p_users_create_url
    assert_response :success
  end

  test "should get edit" do
    get p_users_edit_url
    assert_response :success
  end
end
