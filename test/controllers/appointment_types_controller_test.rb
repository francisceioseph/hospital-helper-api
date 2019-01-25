require 'test_helper'

class AppointmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment_type = appointment_types(:one)
  end

  test "should get index" do
    get appointment_types_url, as: :json
    assert_response :success
  end

  test "should create appointment_type" do
    assert_difference('AppointmentType.count') do
      post appointment_types_url, params: { appointment_type: { create: @appointment_type.create, index: @appointment_type.index, show: @appointment_type.show, update: @appointment_type.update } }, as: :json
    end

    assert_response 201
  end

  test "should show appointment_type" do
    get appointment_type_url(@appointment_type), as: :json
    assert_response :success
  end

  test "should update appointment_type" do
    patch appointment_type_url(@appointment_type), params: { appointment_type: { create: @appointment_type.create, index: @appointment_type.index, show: @appointment_type.show, update: @appointment_type.update } }, as: :json
    assert_response 200
  end

  test "should destroy appointment_type" do
    assert_difference('AppointmentType.count', -1) do
      delete appointment_type_url(@appointment_type), as: :json
    end

    assert_response 204
  end
end
