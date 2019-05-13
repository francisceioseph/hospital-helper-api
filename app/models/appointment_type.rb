# frozen_string_literal: true

class AppointmentType < ApplicationRecord
  has_many :appointments
  acts_as_paranoid
end
