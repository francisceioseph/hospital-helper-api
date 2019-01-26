# frozen_string_literal: true

class SurgeryType < ApplicationRecord
  validates :surgery_type_name, presence: true

  belongs_to :surgery_appointment, required: false
end
