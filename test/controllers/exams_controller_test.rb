# frozen_string_literal: true

require 'test_helper'

class ExamsControllerTest < ActionDispatch::IntegrationTest
  def load_exam_fixtures
    pacients(:one)
    doctors(:one)
    prontuarios(:one)
  end

  def exam_url(exam)
    "#{exams_url}/#{exam.id}"
  end

  setup do
    load_exam_fixtures

    @exam = exam_appointments(:one)
    @exam_params = FactoryBot.build(:exam)
    @auth_headers = auth_headers
  end

  test 'should get index' do
    get exams_url, headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should create exam' do
    assert_difference('ExamAppointment.count') do
      post exams_url,
           headers: @auth_headers,
           params: @exam_params,
           as: :json
    end

    assert_response 201
  end

  test 'should show exam' do
    get exam_url(@exam), headers: @auth_headers, as: :json
    assert_response :success
  end

  test 'should update exam' do
    patch exam_url(@exam),
      headers: @auth_headers,
      params: @exam_params,
      as: :json

    assert_response 200
  end

  # test 'should destroy exam' do
  #   assert_difference('ExamAppointment.count', -1) do
  #     delete exam_url(@exam), headers: @auth_headers, as: :json
  #   end

  #   assert_response 204
  # end
end
