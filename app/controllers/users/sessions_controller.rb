# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource.to_json({ 
      include: { 
        profile: { methods: :profile_type },
        role: { include: :permissions }
      }
    })
  end

  def respond_to_on_destroy
    head :no_content
  end
end
