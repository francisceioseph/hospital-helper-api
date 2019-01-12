class SurgeryAppointment < ApplicationRecord
  validates :scheduled_to, presence: true

  validates :finished, presence: true
  validates :canceled, presence: true

  belongs_to :prontuario
  belongs_to :doctor
  belongs_to :pacient

  has_one :surgery_type
end
