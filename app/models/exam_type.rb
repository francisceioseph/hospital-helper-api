# frozen_string_literal: true

class ExamType < ApplicationRecord
  belongs_to :exam_appointment, required: false
end
