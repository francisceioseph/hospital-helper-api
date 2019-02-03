# frozen_string_literal: true

class Appointment < ApplicationRecord
  has_one :appointment_type

  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario
end
