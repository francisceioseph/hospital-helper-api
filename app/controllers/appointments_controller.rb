# frozen_string_literal: true

class AppointmentsController < ApplicationController
  
  before_action :set_appointment, only: %i[show update destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
    respond_to do |format|
      format.json
      format.pdf do
        render pdf: "appointment_#{@appointment.pacient.personal_datum.full_name.parameterize.underscore}",
          template: "appointments/show.html.erb",
            layout: 'layouts/pdf.html'
      end
    end
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      render :show, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    if @appointment.update(appointment_params)
      render :show, status: :ok
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def appointment_params
    params.require(:appointment).permit(
      :scheduled_to,
      :intended_end_time,
      :real_end_time,
      :finished,
      :canceled,
      :doctor_id,
      :pacient_id,
      :prontuario_id,
      :appointment_type_id
    )
  end
end
