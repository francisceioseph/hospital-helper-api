# frozen_string_literal: true

require 'test_helper'

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  def doctor_url(doctor)
    "#{doctors_url}/#{doctor.id}"
  end

  setup do
    @doctor = doctors(:one)
    @doctor_params = FactoryBot.create(:doctor)
    @auth_headers = auth_headers
  end

  test 'should get index' do
    get doctors_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create doctor' do
    assert_difference('Doctor.count') do
      post doctors_url,
           headers: @auth_headers,
           params: @doctor_params,
           as: :json
    end

    assert_response 201
  end

  test 'should show doctor' do
    get doctor_url(@doctor), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update doctor' do
    patch doctor_url(@doctor),
          headers: @auth_headers,
          params: @doctor_params,
          as: :json
    assert_response 200
  end

  # test 'should destroy doctor' do
  #   assert_difference('Doctor.count', -1) do
  #     delete doctor_url(@doctor), headers: @auth_headers, as: :json
  #   end

  #   assert_response 204
  # end
end
