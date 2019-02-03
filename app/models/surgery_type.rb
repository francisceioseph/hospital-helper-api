# frozen_string_literal: true

class SurgeryType < ApplicationRecord
  belongs_to :surgery_appointment, required: false
end
