# frozen_string_literal: true

class PrescriptionItem < ApplicationRecord
  has_one :medication
  belongs_to :prescription
  acts_as_paranoid
  has_paper_trail
end
