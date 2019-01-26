# frozen_string_literal: true

class Appointment < ApplicationRecord
  validates :scheduled_to, presence: true
  validates :intended_end_time, presence: true
  validates_inclusion_of  :finished, in: [true, false]
  validates_inclusion_of  :canceled, in: [true, false]

  has_one :appointment_type

  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario
end
