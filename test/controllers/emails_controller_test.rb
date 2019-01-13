require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email = emails(:one)
  end

  test "should get index" do
    get emails_url, as: :json
    assert_response :success
  end

  test "should create email" do
    assert_difference('Email.count') do
      post emails_url, params: { email: { create: @email.create, index: @email.index, remove: @email.remove, show: @email.show, update: @email.update } }, as: :json
    end

    assert_response 201
  end

  test "should show email" do
    get emails_url(@email), as: :json
    assert_response :success
  end

  test "should update email" do
    patch emails_url(@email), params: { email: { create: @email.create, index: @email.index, remove: @email.remove, show: @email.show, update: @email.update } }, as: :json
    assert_response 200
  end

  test "should destroy email" do
    assert_difference('Email.count', -1) do
      delete emails_url(@email), as: :json
    end

    assert_response 204
  end
end
