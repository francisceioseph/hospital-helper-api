require 'test_helper'

class PacientControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headers = { 'HTTP_ACCEPT': 'application/json' }
  end

  test 'can list all pacients' do
    get pacients_url, headers: @headers
    assert_response :success
  end

  test 'can retrieve a pacient' do
    pacient = pacients(:one)
    get pacients_url(pacient), headers: @headers
    assert_response :success
  end

  test 'can create a pacient' do
    philip = pacients(:philip)
    post pacients_url, headers: @headers, params: { pacient: philip }
    assert_response :success
  end

  test 'can update a pacient' do
    pacient = pacients(:one)
    patch "/pacients/#{pacient.id}", headers: @headers, params: {
      pacient: {
        profile_type: 'Pacient'
      }
    }
    assert_response :success
  end
end
