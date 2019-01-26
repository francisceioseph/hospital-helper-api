# frozen_string_literal: true

FactoryBot.define do
  factory :appointment_type do
    appointment_type_name        { 'Primeira Vez' }
    appointment_type_description { 'Consulta preliminar para diagnóstico' }
  end
end
