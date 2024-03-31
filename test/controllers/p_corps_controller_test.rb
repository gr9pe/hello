require "test_helper"

class PCorpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get p_corps_index_url
    assert_response :success
  end

  test "should get create" do
    get p_corps_create_url
    assert_response :success
  end

  test "should get edit" do
    get p_corps_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get p_corps_destroy_url
    assert_response :success
  end
end
