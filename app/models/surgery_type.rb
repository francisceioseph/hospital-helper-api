# frozen_string_literal: true

class SurgeryType < ApplicationRecord
  has_many :surgery_appointment
  acts_as_paranoid
  has_paper_trail
end
