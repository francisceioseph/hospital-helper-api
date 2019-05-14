class UploadsController < ApplicationController
  before_action :set_file_path, only: [:download]

  def download
    send_file @file_path, x_sendfile: true
  end

  private
  
  def set_file_path
    allowed = download_params
    filename = "#{allowed[:basename]}.#{allowed[:extension]}"

    @file_path = Rails.root.join(
      'uploads',
      allowed[:model_class],
      allowed[:mounted_as],
      allowed[:model_id],
      filename
    )
  end
  
  def download_params
    params.permit(
      :model_class,
      :mounted_as,
      :model_id,
      :basename,
      :extension
    )
  end
end
