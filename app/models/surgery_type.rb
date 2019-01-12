class SurgeryType < ApplicationRecord
  validates :surgery_type_name, presence: true
  belongs_to :surgery_appointment
end
