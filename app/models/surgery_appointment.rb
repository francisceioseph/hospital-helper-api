# frozen_string_literal: true

class SurgeryAppointment < ApplicationRecord
  belongs_to :prontuario
  belongs_to :doctor
  belongs_to :pacient

  has_one :surgery_type
end
