# frozen_string_literal: true

class AppointmentType < ApplicationRecord
  validates :appointment_type_name, presence: true

  belongs_to :appointment, required: false
end
