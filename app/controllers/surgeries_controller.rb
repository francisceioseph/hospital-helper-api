class SurgeriesController < ApplicationController
  before_action :set_surgery, only: [:show, :update, :destroy]

  # GET /surgeries
  # GET /surgeries.json
  def index
    @surgeries = SurgeryAppointment.all
  end

  # GET /surgeries/1
  # GET /surgeries/1.json
  def show
  end

  # POST /surgeries
  # POST /surgeries.json
  def create
    @surgery = SurgeryAppointment.new(surgery_params)

    if @surgery.save
      render :show, status: :created
    else
      render json: @surgery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surgeries/1
  # PATCH/PUT /surgeries/1.json
  def update
    if @surgery.update(surgery_params)
      render :show, status: :ok
    else
      render json: @surgery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surgeries/1
  # DELETE /surgeries/1.json
  def destroy
    @surgery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery
      @surgery = SurgeryAppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_params
      params.require(:surgery).permit(
        :prontuario_id,
        :doctor_id,
        :pacient_id,
        :scheduled_to,
        :real_end_time,
        :finished,
        :canceled,
      )
    end
end
