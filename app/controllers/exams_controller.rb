# frozen_string_literal: true

class ExamsController < ApplicationController
  
  before_action :set_exam, only: %i[show update destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = ExamAppointment.all
  end

  # GET /exams/1
  # GET /exams/1.json
  def show; end

  # POST /exams
  # POST /exams.json
  def create
    @exam = ExamAppointment.new(exam_params)

    if @exam.save
      render :show, status: :created
    else
      render json: @exam.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    if @exam.update(exam_params)
      render :show, status: :ok
    else
      render json: @exam.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_exam
    @exam = ExamAppointment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exam_params
    params.require(:exam).permit(
      :scheduled_to,
      :finished,
      :canceled,
      :prontuario_id,
      :doctor_id,
      :pacient_id,
      :exam_type_id
    )
  end
end
