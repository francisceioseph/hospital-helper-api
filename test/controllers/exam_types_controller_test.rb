require 'test_helper'

class ExamTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exam_type = exam_types(:one)
  end

  test "should get index" do
    get exam_types_url, as: :json
    assert_response :success
  end

  test "should create exam_type" do
    assert_difference('ExamType.count') do
      post exam_types_url, params: { exam_type: { create: @exam_type.create, index: @exam_type.index, show: @exam_type.show, update: @exam_type.update } }, as: :json
    end

    assert_response 201
  end

  test "should show exam_type" do
    get exam_type_url(@exam_type), as: :json
    assert_response :success
  end

  test "should update exam_type" do
    patch exam_type_url(@exam_type), params: { exam_type: { create: @exam_type.create, index: @exam_type.index, show: @exam_type.show, update: @exam_type.update } }, as: :json
    assert_response 200
  end

  test "should destroy exam_type" do
    assert_difference('ExamType.count', -1) do
      delete exam_type_url(@exam_type), as: :json
    end

    assert_response 204
  end
end
