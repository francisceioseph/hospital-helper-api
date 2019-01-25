class AppointmentTypesController < ApplicationController
  before_action :set_appointment_type, only: [:show, :update, :destroy]

  # GET /appointment_types
  # GET /appointment_types.json
  def index
    @appointment_types = AppointmentType.all
  end

  # GET /appointment_types/1
  # GET /appointment_types/1.json
  def show
  end

  # POST /appointment_types
  # POST /appointment_types.json
  def create
    @appointment_type = AppointmentType.new(appointment_type_params)

    if @appointment_type.save
      render :show, status: :created
    else
      render json: @appointment_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointment_types/1
  # PATCH/PUT /appointment_types/1.json
  def update
    if @appointment_type.update(appointment_type_params)
      render :show, status: :ok
    else
      render json: @appointment_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointment_types/1
  # DELETE /appointment_types/1.json
  def destroy
    @appointment_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_type
      @appointment_type = AppointmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_type_params
      params.require(:appointment_type).permit(:appointment_type_name, :appointment_type_description)
    end
end
