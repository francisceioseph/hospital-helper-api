# frozen_string_literal: true

class ExamType < ApplicationRecord
  has_many :exam_appointments
  acts_as_paranoid
  has_paper_trail
end
