class PacientsController < ApplicationController
  def index
    @pacients = Pacient.all
  end

  def show
    @pacient = Pacient.find pacient_id
  end

  def create
    puts pacient_params
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
    params.require(:pacient).permit(
      personal_datum_attributes: [
        :id, :full_name, :social_name, :rg,
        :cpf, :nis, :nationality,
        :skin_color,:gender,
      ],
      family_datum_attributes: [
        :id, :mother_name,
        :father_name,
        :is_family_head,
      ],
      addresses_attributes: [
        :id, :street_name, :house_number, :zipcode,
        :neighborhood, :city, :state,
      ],
      telephones_attributes: [
        :id, :number
      ],
      emails_attributes: [
        :id, :address
      ],
    );
  end
end
