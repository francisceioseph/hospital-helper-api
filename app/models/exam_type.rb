# frozen_string_literal: true

class ExamType < ApplicationRecord
  validates :exam_type_name, presence: true
  belongs_to :exam_appointment, required: false
end
