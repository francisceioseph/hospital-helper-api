# frozen_string_literal: true

class PacientsController < ApplicationController
  
  before_action :set_pacient, only: %i[show update destroy appointments exams]

  # GET /pacients
  # GET /pacients.json
  def index
    @pacients = Pacient.all
  end

  # GET /pacients/1/appointments
  # GET /pacients/1/appointments.json
  def appointments; end

  # GET /pacients/1/exams
  # GET /pacients/1/exams.json
  def exams; end

  # GET /pacients/1
  # GET /pacients/1.json
  def show; end

  # POST /pacients
  # POST /pacients.json
  def create
    @pacient = Pacient.new(pacient_params)

    if @pacient.save
      render :show, status: :created
    else
      render json: @pacient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pacients/1
  # PATCH/PUT /pacients/1.json
  def update
    if @pacient.update(pacient_params)
      render :show, status: :ok
    else
      render json: @pacient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.json
  def destroy
    @pacient.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pacient
    @pacient = Pacient.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pacient_params 
    p = pretty_pacient_params

    p[:personal_datum_attributes] = p.delete :personal_datum
    p[:personal_datum_attributes][:birth_datum_attributes] = p[:personal_datum_attributes].delete :birth_datum
    p[:personal_datum_attributes][:immigration_datum_attributes] = p[:personal_datum_attributes].delete :immigration_datum
    p[:addresses_attributes] = p.delete :addresses
    p[:telephones_attributes] = p.delete :telephones
    p[:emails_attributes] = p.delete :emails
    p[:family_datum_attributes] = p.delete :family_datum
    p[:next_of_kin_attributes] = p.delete :next_of_kin

    p
  end

  def pretty_pacient_params
    params.require(:pacient).permit(
      :id,
      personal_datum: [
        :id,
        :full_name,
        :social_name,
        :rg,
        :cpf,
        :nis,
        :nationality,
        :skin_color,
        :gender,
        :cns,
        birth_datum: %i[
          id
          date_of_birth
          country_of_birth
          state_of_birth
          city_of_birth
        ],
        immigration_datum: %i[
          id
          nationalization_date
          oridinance_date
        ]
      ],
      addresses: %i[
        id
        street_name
        house_number
        zipcode
        neighborhood
        city
        state
      ],
      telephones: %i[
        id
        number
        contact_person
      ],
      emails: %i[
        id
        address
      ],
      family_datum: %i[
        id
        mother_name
        father_name
        is_family_head
      ],
      next_of_kin: %i[
        id
        full_name
        cpf
      ]
    )
  end
end
