class PacientsController < ApplicationController
  def index
    @pacients = Pacient.all
  end

  def show
    @pacient = Pacient.find pacient_id
  end

  def create
    @pacient = Pacient.new pacient_params
    @pacient.save
  end

  def update
    @pacient = Pacient.find pacient_id
    @pacient.update_attributes pacient_params
  end

  protected

  def pacient_id
    params.require(:id)
  end

  def pacient_params
    params.require(:pacient).permit(:profile_type)
  end
end
