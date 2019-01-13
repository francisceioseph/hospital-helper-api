class ApplicationController < ActionController::API
  def id_params
    params.require(:id)
  end
end
