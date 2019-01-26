# frozen_string_literal: true

require 'test_helper'
require 'devise/jwt/test_helpers'

class ExamTypesControllerTest < ActionDispatch::IntegrationTest
  def exam_type_url(exam_type)
    "#{exam_types_url}/#{exam_type.id}"
  end

  setup do
    user = users(:one)
    headers = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
    @auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)

    @exam_type = exam_types(:one)
    @exam_types_params = FactoryBot.create(:exam_type)
  end

  test 'should get index' do
    get exam_types_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create exam_type' do
    assert_difference('ExamType.count') do
      post exam_types_url, headers: @auth_headers, params: @exam_types_params, as: :json
    end

    assert_response 201
  end

  test 'should show exam_type' do
    get exam_type_url(@exam_type), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update exam_type' do
    patch exam_type_url(@exam_type), headers: @auth_headers, params: @exam_types_params, as: :json
    assert_response 200
  end
end
