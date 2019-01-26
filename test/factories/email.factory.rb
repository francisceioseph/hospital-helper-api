# frozen_string_literal: true

FactoryBot.define do
  factory :email do
    address { 'frankie@tmz.example.com' }
    profile_id { 3 }
  end
end
