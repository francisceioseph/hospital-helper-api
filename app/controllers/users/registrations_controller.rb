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
    allowed = [
      :role_id,
      :email,
      :password,
      :password_confirmation,
      [profile_attributes: [
        :profile_type,
        [personal_datum_attributes: [
          :full_name
        ]]
      ]]
    ]
    
    params.require(resource_name).permit(allowed)
  end
end
