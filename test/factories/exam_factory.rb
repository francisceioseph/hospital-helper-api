# frozen_string_literal: true

FactoryBot.define do
  factory :exam, class: ExamAppointment do
    scheduled_to  { 5.days.from_now }
    finished      { false }
    canceled      { false }
    doctor_id     { 1 }
    prontuario_id { 3 }
    pacient_id    { 3 }
  end
end
