# frozen_string_literal: true

require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  def load_appoitment_fixtures
    pacients(:one)
    doctors(:one)
    prontuarios(:one)
  end

  def appointment_url(appointment)
    "#{appointments_url}/#{appointment.id}"
  end

  setup do
    load_appoitment_fixtures

    @appointment = appointments(:one)
    @appointment_params = FactoryBot.create(:appointment)
    @auth_headers = auth_headers
  end

  test 'should get index' do
    get appointments_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create appointment' do
    assert_difference('Appointment.count') do
      post appointments_url,
           headers: @auth_headers,
           params: @appointment_params,
           as: :json
    end

    assert_response 201
  end

  test 'should show appointment' do
    get appointment_url(@appointment), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update appointment' do
    patch appointment_url(@appointment),
          headers: @auth_headers,
          params: @appointment_params,
          as: :json
    assert_response 200
  end

  # test 'should destroy appointment' do
  #   assert_difference('Appointment.count', -1) do
  #     delete appointment_url(@appointment),headers: @auth_headers,  as: :json
  #   end

  #   assert_response 204
  # end
end
