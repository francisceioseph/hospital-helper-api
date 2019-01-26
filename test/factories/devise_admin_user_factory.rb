# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    email { Faker::Internet.email }
    password {'password'}
    password_confirmation {'password'}
    confirmed_at Date.today
  end
end
