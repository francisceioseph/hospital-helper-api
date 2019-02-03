# frozen_string_literal: true

class AppointmentType < ApplicationRecord
  has_many :appointments
end
