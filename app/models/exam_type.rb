# frozen_string_literal: true

class ExamType < ApplicationRecord
  has_many :exam_appointments
end
