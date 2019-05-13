# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Pundit
  include ActionController::MimeResponds

  before_action :authenticate_user!
  before_action :set_paper_trail_whodunnit
  
  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100',
          page_size: 'a5'
        }
      ]
    }, status: :bad_request
  end

  def id_params
    params.require(:id)
  end
end
