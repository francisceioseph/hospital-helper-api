# frozen_string_literal: true

class ExamAppointment < ApplicationRecord
  belongs_to :exam_type
  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario, required: false
end
