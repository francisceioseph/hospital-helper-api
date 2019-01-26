# frozen_string_literal: true

require 'test_helper'

class DoctorControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headers = { 'HTTP_ACCEPT': 'application/json' }
  end

  test 'should list all doctors' do
    get doctors_url, headers: @headers
    assert_response :success
  end

  test 'should create a new doctor' do
    doctor = Doctor.new
    doctor_params = {
      doctor: doctor.attributes
    }

    post doctors_url, headers: @headers, params: doctor_params
    assert_response :success
  end

  test 'should retrieve a doctor' do
    doctor = doctors(:one)

    get doctors_url(doctor), headers: @headers
    assert_response :success
  end

  test 'should get update' do
    doctor = doctors(:one)
    doctor_update_url = "/doctors/#{doctor.id}"

    get doctor_update_url, headers: @headers, params: { doctor: doctor }
    assert_response :success
  end
end
