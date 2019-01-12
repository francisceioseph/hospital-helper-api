require 'test_helper'

class PacientControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pacient_index_url
    assert_response :success
  end

  test "should get show" do
    get pacient_show_url
    assert_response :success
  end

  test "should get create" do
    get pacient_create_url
    assert_response :success
  end

  test "should get update" do
    get pacient_update_url
    assert_response :success
  end

end
