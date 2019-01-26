# frozen_string_literal: true

require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  def email_url(email) 
    "#{emails_url}/#{email.id}"
  end

  setup do
    @email = emails(:one)
    @email_params = FactoryBot.build(:email)
    @auth_headers = auth_headers
  end

  test 'should get index' do
    get emails_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create email' do
    assert_difference('Email.count') do
      post emails_url, 
           params: @email_params,
           headers: @auth_headers,
           as: :json
    end

    assert_response 201
  end

  test 'should show email' do
    get email_url(@email), as: :json
    assert_response :success
  end

  test 'should update email' do
    patch email_url(@email),
          params: @email_params,
          headers: @auth_headers,
          as: :json
    assert_response 200
  end

  test 'should destroy email' do
    assert_difference('Email.count', -1) do
      delete email_url(@email), headers: @auth_headers, as: :json
    end

    assert_response 204
  end
end
