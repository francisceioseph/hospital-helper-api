# frozen_string_literal: true


class Users::RegistrationsController < Devise::RegistrationsController

  respond_to :json

  def create
    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end

  protected

  def sign_up_params
    p = pretty_sign_up_params
    p[:profile_attributes] = p.delete :profile
    p[:profile_attributes][:personal_datum_attributes] = p[:profile_attributes].delete :personal_datum
    p[:profile_attributes][:personal_datum_attributes][:birth_datum_attributes] = p[:profile_attributes][:personal_datum_attributes].delete :birth_datum

    p
  end

  def pretty_sign_up_params 
    allowed = [
      :role_id,
      :email,
      :password,
      :password_confirmation,
      profile: [
        :profile_type,
        personal_datum: [
          :id,
          :full_name,
          :social_name,
          :rg,
          :cpf,
          :crm,
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
        ],
      ]
    ]
    
    params.require(resource_name).permit(allowed)
  end

end
