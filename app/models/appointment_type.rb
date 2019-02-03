# frozen_string_literal: true

class AppointmentType < ApplicationRecord
  belongs_to :appointment, required: false
end
