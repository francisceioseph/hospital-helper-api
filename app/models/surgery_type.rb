# frozen_string_literal: true

class SurgeryType < ApplicationRecord
  has_many :surgery_appointment
end
