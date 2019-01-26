# frozen_string_literal true

FactoryBot.define do
  factory :appointment do
    scheduled_to      { 5.days.from_now }
    intended_end_time { 5.days.from_now }
    real_end_time     { nil }
    finished          { false }
    canceled          { false }
    doctor_id         { 1 }
    pacient_id        { 3 }
    prontuario_id     { 3 }
  end
end
