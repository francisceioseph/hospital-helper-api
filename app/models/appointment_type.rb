# frozen_string_literal: true

class AppointmentType < ApplicationRecord
  has_many :appointments
  acts_as_paranoid
  has_paper_trail
end
