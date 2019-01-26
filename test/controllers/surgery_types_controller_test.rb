# frozen_string_literal: true

require 'test_helper'

class SurgeryTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surgery_type = surgery_types(:one)
  end

  test 'should get index' do
    get surgery_types_url, as: :json
    assert_response :success
  end

  test 'should create surgery_type' do
    assert_difference('SurgeryType.count') do
      post surgery_types_url, params: { surgery_type: { create: @surgery_type.create, index: @surgery_type.index, show: @surgery_type.show, update: @surgery_type.update } }, as: :json
    end

    assert_response 201
  end

  test 'should show surgery_type' do
    get surgery_type_url(@surgery_type), as: :json
    assert_response :success
  end

  test 'should update surgery_type' do
    patch surgery_type_url(@surgery_type), params: { surgery_type: { create: @surgery_type.create, index: @surgery_type.index, show: @surgery_type.show, update: @surgery_type.update } }, as: :json
    assert_response 200
  end

  test 'should destroy surgery_type' do
    assert_difference('SurgeryType.count', -1) do
      delete surgery_type_url(@surgery_type), as: :json
    end

    assert_response 204
  end
end
