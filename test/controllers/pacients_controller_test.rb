require 'test_helper'

class PacientsControllerTest < ActionDispatch::IntegrationTest
  def pacient_url(pacient)
    "#{pacients_url}/#{pacient.id}"
  end

  setup do
    @pacient = pacients(:one)
    @pacient_params = FactoryBot.build(:pacient)
    @auth_headers = auth_headers
  end

  test "should get index" do
    get pacients_url,
        headers: @auth_headers,
        as: :json
    assert_response :success
  end

  test "should create pacient" do
    assert_difference('Pacient.count') do
      post pacients_url,
           headers: @auth_headers,
           params: @pacient_params, 
           as: :json
    end

    assert_response 201
  end

  test "should show pacient" do
    get pacient_url(@pacient),
        headers: @auth_headers,
        as: :json
    assert_response :success
  end

  test "should update pacient" do
    patch pacient_url(@pacient),
          headers: @auth_headers,
          params: @pacient_params,
          as: :json
    assert_response 200
  end

  # test "should destroy pacient" do
  #   assert_difference('Pacient.count', -1) do
  #     delete pacient_url(@pacient),
  #            headers: @auth_headers,
  #            as: :json
  #   end

  #   assert_response 204
  # end
end
