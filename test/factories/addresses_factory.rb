# frozen_string_literal: true

FactoryBot.define do
  factory :address do
    profile_id   { '3' }
    street_name  { 'Rua da Pata de Vaca' }
    house_number { 23 }
    zipcode      { '19121912-789' }
    neighborhood { 'Botao Mimoso ' }
    city         { 'Orquilandia' }
    state        { 'Estado do Sul' }
  end
end
