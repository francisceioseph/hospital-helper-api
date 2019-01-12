class SurgeryType < ApplicationRecord
  validate :surgery_type_name, presence: true
  belongs_to :surgery_appointment
end
