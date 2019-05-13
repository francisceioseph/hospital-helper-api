# frozen_string_literal: true

class SurgeryAppointment < ApplicationRecord
  belongs_to :prontuario, required: false
  belongs_to :surgery_type
  belongs_to :doctor
  belongs_to :pacient
  acts_as_paranoid
  has_paper_trail
end
