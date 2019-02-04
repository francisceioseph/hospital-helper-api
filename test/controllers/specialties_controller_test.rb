require 'test_helper'

class SpecialtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialty = specialties(:one)
  end

  test "should get index" do
    get specialties_url, as: :json
    assert_response :success
  end

  test "should create specialty" do
    assert_difference('Specialty.count') do
      post specialties_url, params: { specialty: { create: @specialty.create, destroy: @specialty.destroy, index: @specialty.index, update: @specialty.update } }, as: :json
    end

    assert_response 201
  end

  test "should show specialty" do
    get specialty_url(@specialty), as: :json
    assert_response :success
  end

  test "should update specialty" do
    patch specialty_url(@specialty), params: { specialty: { create: @specialty.create, destroy: @specialty.destroy, index: @specialty.index, update: @specialty.update } }, as: :json
    assert_response 200
  end

  test "should destroy specialty" do
    assert_difference('Specialty.count', -1) do
      delete specialty_url(@specialty), as: :json
    end

    assert_response 204
  end
end
