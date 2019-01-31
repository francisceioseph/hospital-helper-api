# frozen_string_literal: true

FactoryBot.define do
  factory :doctor do
    profile_type { 'Doctor' }
  end
end

FactoryBot.define do
  factory :doctor_specialties, class: Doctor do
    profile_type { 'Doctor' }
    specialties_params { [ 1 ] }
  end
end
