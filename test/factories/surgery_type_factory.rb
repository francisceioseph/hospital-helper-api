# frozen_string_literal: true

FactoryBot.define do
  factory :surgery_type do
    surgery_type_name        { 'Colecistectomia ' }
    surgery_type_description { 'Remoção cirúrgica da vesícula biliar.' }
  end
end
