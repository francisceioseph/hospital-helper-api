require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  def email_url(email)
    "#{emails_url}/#{email.id}"
  end

  def email
    Email.new(
      profile_id: 3,
      address: 'boo@mdc.com',
    )
  end

  setup do
    @email = emails(:one)
  end

  test "should get index" do
    get emails_url, as: :json
    assert_response :success
  end

  test "should create email" do
    assert_difference('Email.count') do
      post emails_url, params: { email: email.attributes }, as: :json
    end

    assert_response 200
  end

  test "should show email" do
    get emails_url(@email), as: :json
    assert_response :success
  end

  test "should update email" do
    patch email_url(@email), params: { email: @email.attributes }, as: :json
    assert_response 200
  end

  test "should destroy email" do
    assert_difference('Email.count', -1) do
      delete email_url(@email), as: :json
    end

    assert_response 204
  end
end
