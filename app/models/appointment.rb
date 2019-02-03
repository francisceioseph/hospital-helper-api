# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :appointment_type
  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario, required: false
end
