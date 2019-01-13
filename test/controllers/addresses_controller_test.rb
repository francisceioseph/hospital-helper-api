require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  def address_url(address)
    "#{addresses_url}/#{address.id}"
  end

  setup do
    @new_address = Address.new(
      :profile_id => '3',
      :street_name => 'Rua da Pata de Vaca',
      :house_number => 23,
      :zipcode => '19121912-789',
      :neighborhood => 'Botao Mimoso',
      :city => 'Orquilandia',
      :state => 'Estado do Sul')
    
    @address = addresses(:one)
  end

  test "should get index" do
    get addresses_url, as: :json
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post addresses_url, params: { address: @new_address.attributes }, as: :json
    end

    assert_response 200
  end

  test "should show address" do
    get address_url(@address), as: :json
    assert_response :success
  end

  test "should update address" do
    patch address_url(@address), params: { address: { street_name: 'Rua das Flores', house_number: 34 } }, as: :json
    assert_response 200
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete address_url(@address), as: :json
    end

    assert_response 204
  end
end
