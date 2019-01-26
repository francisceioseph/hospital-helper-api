# frozen_string_literal: true

class SurgeryTypesController < ApplicationController
  before_action :set_surgery_type, only: %i[show update destroy]

  # GET /surgery_types
  # GET /surgery_types.json
  def index
    @surgery_types = SurgeryType.all
  end

  # GET /surgery_types/1
  # GET /surgery_types/1.json
  def show; end

  # POST /surgery_types
  # POST /surgery_types.json
  def create
    @surgery_type = SurgeryType.new(surgery_type_params)

    if @surgery_type.save
      render :show, status: :created
    else
      render json: @surgery_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surgery_types/1
  # PATCH/PUT /surgery_types/1.json
  def update
    if @surgery_type.update(surgery_type_params)
      render :show, status: :ok
    else
      render json: @surgery_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surgery_types/1
  # DELETE /surgery_types/1.json
  def destroy
    @surgery_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_surgery_type
    @surgery_type = SurgeryType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def surgery_type_params
    params.require(:surgery_type).permit(:surgery_type_name, :surgery_type_description)
  end
end
