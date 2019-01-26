# frozen_string_literal: true

require 'test_helper'

class AppointmentTypesControllerTest < ActionDispatch::IntegrationTest
  def appointment_type_url(appointment_type)
    "#{appointment_types_url}/#{appointment_type.id}"
  end

  setup do
    @appointment_type = appointment_types(:one)
    @auth_headers = auth_headers
    @appointment_type_params = FactoryBot.create(:appointment_type)
  end

  test 'should get index' do
    get appointment_types_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create appointment_type' do
    assert_difference('AppointmentType.count') do
      post appointment_types_url,
        headers: @auth_headers,
        params: @appointment_type_params,
        as: :json
    end

    assert_response 201
  end

  test 'should show appointment_type' do
    get appointment_type_url(@appointment_type), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update appointment_type' do
    patch appointment_type_url(@appointment_type),
      headers: @auth_headers,
      params: @appointment_type_params,
      as: :json
    assert_response 200
  end
end
