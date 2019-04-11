class DoctorsController < ApplicationController
  
  before_action :set_doctor, only: [:show, :update, :destroy, :appointments, :exams]

  # GET /doctors
  # GET /doctors.json
  def index
    @doctors = Doctor.all.includes(:specialties)
  end

  # GET /doctors/1/appointments
  # GET /doctors/1/appointments.json
  def appointments; end

  # GET /doctors/1/exams
  # GET /doctors/1/exams.json
  def exams; end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      render :show, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update
    if @doctor.update(doctor_params)
      render :show, status: :ok
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      PrettyApi.with_nested_attributes  pretty_doctor_params,
                                        [
                                          :doctor_specialties,
                                          :personal_datum,
                                          :addresses,
                                          :telephones,
                                          :emails
                                        ]
                                        

    end

    def pretty_doctor_params
      params.require(:doctor).permit(
        doctor_specialties: [:specialty_id],
        personal_datum: %i[
          full_name
          social_name
          rg
          cpf
          nis
          nationality
          skin_color
          gender
          crm
        ],
        addresses: %i[
          street_name
          house_number
          zipcode
          neighborhood
          city
          state
        ],
        telephones: %i[
          number
          contact_person
        ],
        emails: %i[
          address
        ]
      )
    end
end
