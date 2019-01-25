require 'test_helper'

class SurgeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @surgery = surgeries(:one)
  end

  test "should get index" do
    get surgeries_url, as: :json
    assert_response :success
  end

  test "should create surgery" do
    assert_difference('Surgery.count') do
      post surgeries_url, params: { surgery: { create: @surgery.create, index: @surgery.index, show: @surgery.show, update: @surgery.update } }, as: :json
    end

    assert_response 201
  end

  test "should show surgery" do
    get surgery_url(@surgery), as: :json
    assert_response :success
  end

  test "should update surgery" do
    patch surgery_url(@surgery), params: { surgery: { create: @surgery.create, index: @surgery.index, show: @surgery.show, update: @surgery.update } }, as: :json
    assert_response 200
  end

  test "should destroy surgery" do
    assert_difference('Surgery.count', -1) do
      delete surgery_url(@surgery), as: :json
    end

    assert_response 204
  end
end
