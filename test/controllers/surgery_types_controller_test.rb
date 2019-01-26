# frozen_string_literal: true

require 'test_helper'

class SurgeryTypesControllerTest < ActionDispatch::IntegrationTest
  def surgery_type_url(surgery_type)
    "#{surgery_types_url}/#{surgery_type.id}"
  end

  setup do
    @auth_headers = auth_headers
    @surgery_type = surgery_types(:one)
    @surgery_type_params = FactoryBot.build(:surgery_type)
  end

  test 'should get index' do
    get surgery_types_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create surgery_type' do
    assert_difference('SurgeryType.count') do
      post surgery_types_url,
           headers: @auth_headers, 
           params: @surgery_type_params,
           as: :json
    end

    assert_response 201
  end

  test 'should show surgery_type' do
    get surgery_type_url(@surgery_type), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update surgery_type' do
    patch surgery_type_url(@surgery_type),
          params: @surgery_type_params,
          headers: @auth_headers,
          as: :json
    assert_response 200
  end

  # test 'should destroy surgery_type' do
  #   assert_difference('SurgeryType.count', -1) do
  #     delete surgery_type_url(@surgery_type), headers: @auth_headers, as: :json
  #   end

  #   assert_response 204
  # end
end
