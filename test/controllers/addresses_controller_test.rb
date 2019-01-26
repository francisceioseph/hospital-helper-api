# frozen_string_literal: true

require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  def address_url(address)
    "#{addresses_url}/#{address.id}"
  end

  setup do
    @auth_headers = auth_headers
    @address = addresses(:one)
    @addr_factory = FactoryBot.create(:address)
  end

  test 'should get index' do
    get addresses_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create address' do
    assert_difference('Address.count') do
      post addresses_url, headers: @auth_headers, params: @addr_factory, as: :json
    end

    assert_response 201
  end

  test 'should show address' do
    get address_url(@address), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update address' do
    patch address_url(@address), headers: @auth_headers, params: @addr_factory, as: :json
    assert_response 200
  end

  test 'should destroy address' do
    assert_difference('Address.count', -1) do
      delete address_url(@address), headers: @auth_headers, as: :json
    end

    assert_response 204
  end
end
