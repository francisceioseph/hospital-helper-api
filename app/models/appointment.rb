class Appointment < ApplicationRecord
  validates :scheduled_to, presence: true
  validates :intended_end_time, presence: true
  validates :finished, presence: true
  validates :canceled, presence: true

  has_one :appointment_type

  belongs_to :doctor
  belongs_to :pacient, inverse_of: :appointment
  belongs_to :prontuario
end
