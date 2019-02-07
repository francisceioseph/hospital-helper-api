# frozen_string_literal: true

class ExamTypesController < ApplicationController
  
  before_action :set_exam_type, only: %i[show update destroy]

  # GET /exam_types
  # GET /exam_types.json
  def index
    @exam_types = ExamType.all
  end

  # GET /exam_types/1
  # GET /exam_types/1.json
  def show; end

  # POST /exam_types
  # POST /exam_types.json
  def create
    @exam_type = ExamType.new(exam_type_params)

    if @exam_type.save
      render :show, status: :created
    else
      render json: @exam_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exam_types/1
  # PATCH/PUT /exam_types/1.json
  def update
    if @exam_type.update(exam_type_params)
      render :show, status: :ok
    else
      render json: @exam_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exam_types/1
  # DELETE /exam_types/1.json
  def destroy
    exam_type = @exam_type.destroy
    render json: exam_type, status: :ok
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_exam_type
    @exam_type = ExamType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exam_type_params
    params.require(:exam_type).permit(:exam_type_name, :exam_type_description)
  end
end
