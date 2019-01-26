# frozen_string_literal: true

class ExamAppointment < ApplicationRecord
  validates :scheduled_to, presence: true

  has_one :exam_type

  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario
end
