# frozen_string_literal: true

require 'test_helper'

class TelephonesControllerTest < ActionDispatch::IntegrationTest
  def telephone_url(tel)
    "#{telephones_url}/#{tel.id}"
  end

  def telephone
    Telephone.new(
      number: '(88) 98888 8888',
      contact_person: 'Willy',
      profile_id: 3
    )
  end

  setup do
    @telephone = telephones(:one)
    @auth_headers = auth_headers
  end

  test 'should get index' do
    get telephones_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create telephone' do
    assert_difference('Telephone.count') do
      post telephones_url, params: { telephone: telephone }, headers: @auth_headers, as: :json
    end

    assert_response 200
  end

  test 'should show telephone' do
    get telephone_url(@telephone), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update telephone' do
    @telephone.number = '(99) 0000 0000'
    patch telephone_url(@telephone), params: { telephone: @telephone }, headers: @auth_headers, as: :json
    assert_response 200
  end

  test 'should destroy telephone' do
    assert_difference('Telephone.count', -1) do
      delete telephone_url(@telephone), headers: @auth_headers, as: :json
    end

    assert_response 204
  end
end
